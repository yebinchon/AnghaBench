
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* path; int dir_end; } ;
typedef TYPE_1__ sqfs_traverse ;
typedef scalar_t__ sqfs_err ;
struct TYPE_10__ {int fd; } ;
typedef TYPE_2__ sqfs ;


 scalar_t__ SQFS_OK ;
 int die (char*) ;
 int printf (char*,char*) ;
 int sqfs_fd_close (int ) ;
 int sqfs_inode_root (TYPE_2__*) ;
 scalar_t__ sqfs_open_image (TYPE_2__*,char*,int ) ;
 int sqfs_traverse_close (TYPE_1__*) ;
 scalar_t__ sqfs_traverse_next (TYPE_1__*,scalar_t__*) ;
 scalar_t__ sqfs_traverse_open (TYPE_1__*,TYPE_2__*,int ) ;

int sfs_ls(char* image) {
 sqfs_err err = SQFS_OK;
 sqfs_traverse trv;
 sqfs fs;

 if ((err = sqfs_open_image(&fs, image, 0)))
  die("sqfs_open_image error");

 if ((err = sqfs_traverse_open(&trv, &fs, sqfs_inode_root(&fs))))
  die("sqfs_traverse_open error");
 while (sqfs_traverse_next(&trv, &err)) {
  if (!trv.dir_end) {
   printf("%s\n", trv.path);
  }
 }
 if (err)
  die("sqfs_traverse_next error");
 sqfs_traverse_close(&trv);

 sqfs_fd_close(fs.fd);
 return 0;
}
