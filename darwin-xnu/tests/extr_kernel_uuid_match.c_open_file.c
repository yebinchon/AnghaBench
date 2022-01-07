
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int SEEK_END ;
 int close (int) ;
 scalar_t__ lseek (int,int ,int ) ;
 void* mmap (int *,size_t,int ,int ,int,int ) ;
 int open (char*,int ) ;

__attribute__((used)) static void *open_file(char *path, size_t *len) {
 int fd;
 if ((fd = open(path, O_RDONLY)) < 0) {
  return ((void*)0);
 }
 *len = (size_t)lseek(fd, (off_t)0, SEEK_END);
 void *p = mmap(((void*)0), *len, PROT_READ, MAP_PRIVATE, fd, 0);
 close(fd);
 if (p == MAP_FAILED) {
  return ((void*)0);
 }
 return p;
}
