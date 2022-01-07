
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ReadWriteSockets {int write; int read; } ;
typedef int curl_socket_t ;
typedef int CURL ;


 int CURL_POLL_IN ;
 int CURL_POLL_INOUT ;
 int CURL_POLL_OUT ;
 int CURL_POLL_REMOVE ;
 int addFd (int *,int ,char*) ;
 int removeFd (int *,int ,int) ;

__attribute__((used)) static int curlSocketCallback(CURL *easy, curl_socket_t s, int action,
                              void *userp, void *socketp)
{
  struct ReadWriteSockets* sockets = userp;

  (void)easy;
  (void)socketp;

  if(action == CURL_POLL_IN || action == CURL_POLL_INOUT)
    addFd(&sockets->read, s, "read");

  if(action == CURL_POLL_OUT || action == CURL_POLL_INOUT)
    addFd(&sockets->write, s, "write");

  if(action == CURL_POLL_REMOVE) {
    removeFd(&sockets->read, s, 1);
    removeFd(&sockets->write, s, 0);
  }

  return 0;
}
