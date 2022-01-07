
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curlioerr ;
typedef int curliocmd ;
typedef int CURL ;



 int CURLIOE_FAILRESTART ;
 int CURLIOE_OK ;
 int CURLIOE_UNKNOWNCMD ;
 int SEEK_SET ;
 int lseek (int,int ,int ) ;

__attribute__((used)) static curlioerr my_ioctl(CURL *handle, curliocmd cmd, void *userp)
{
  int *fdp = (int *)userp;
  int fd = *fdp;

  (void)handle;

  switch(cmd) {
  case 128:

    if(-1 == lseek(fd, 0, SEEK_SET))

      return CURLIOE_FAILRESTART;

    break;

  default:
    return CURLIOE_UNKNOWNCMD;
  }
  return CURLIOE_OK;
}
