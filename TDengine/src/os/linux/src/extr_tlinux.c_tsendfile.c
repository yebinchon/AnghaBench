
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int sendfile (int,int,int *,size_t) ;

ssize_t tsendfile(int dfd, int sfd, off_t *offset, size_t size) {
  size_t leftbytes = size;
  ssize_t sentbytes;

  while (leftbytes > 0) {

    if (leftbytes > 1000000000) leftbytes = 1000000000;
    sentbytes = sendfile(dfd, sfd, offset, leftbytes);
    if (sentbytes == -1) {
      if (errno == EINTR) {
        continue;
      }
      else {
        return -1;
      }
    }

    leftbytes -= sentbytes;
  }

  return size;
}
