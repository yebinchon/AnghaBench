
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err ;
typedef int curl_socklen_t ;
typedef int curl_socket_t ;


 int EBADIOCTL ;
 int EISCONN ;
 int FALSE ;
 int SET_SOCKERRNO (int ) ;
 int SOCKERRNO ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int Sleep (int ) ;
 int SleepEx (int ,int) ;
 int TRUE ;
 int WSAENOPROTOOPT ;
 scalar_t__ getsockopt (int ,int ,int ,void*,int*) ;

__attribute__((used)) static bool verifyconnect(curl_socket_t sockfd, int *error)
{
  bool rc = TRUE;
  (void)sockfd;
  if(error)
    *error = SOCKERRNO;

  return rc;
}
