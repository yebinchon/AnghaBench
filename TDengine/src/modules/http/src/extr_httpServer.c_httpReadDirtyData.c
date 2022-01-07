
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ HttpContext ;


 scalar_t__ taosReadSocket (int,char*,int) ;

void httpReadDirtyData(HttpContext *pContext) {
  int fd = pContext->fd;
  char data[1024] = {0};
  int len = (int)taosReadSocket(fd, data, 1024);
  while (len >= sizeof(data)) {
    len = (int)taosReadSocket(fd, data, 1024);
  }
}
