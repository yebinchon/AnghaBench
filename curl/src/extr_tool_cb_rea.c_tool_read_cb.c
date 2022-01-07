
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct InStruct {TYPE_1__* config; int fd; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int readbusy; } ;


 size_t CURL_READFUNC_PAUSE ;
 scalar_t__ EAGAIN ;
 int FALSE ;
 int TRUE ;
 scalar_t__ errno ;
 scalar_t__ read (int ,void*,size_t) ;

size_t tool_read_cb(void *buffer, size_t sz, size_t nmemb, void *userdata)
{
  ssize_t rc;
  struct InStruct *in = userdata;

  rc = read(in->fd, buffer, sz*nmemb);
  if(rc < 0) {
    if(errno == EAGAIN) {
      errno = 0;
      in->config->readbusy = TRUE;
      return CURL_READFUNC_PAUSE;
    }

    rc = 0;
  }
  in->config->readbusy = FALSE;
  return (size_t)rc;
}
