
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_OPEN_FILES ;
 int ** __ps2_fdmap ;

int is_fd_valid(int fd)
{

   fd = MAX_OPEN_FILES - fd;

   return (fd >= 0) && (fd < MAX_OPEN_FILES) && (__ps2_fdmap[fd] != ((void*)0));
}
