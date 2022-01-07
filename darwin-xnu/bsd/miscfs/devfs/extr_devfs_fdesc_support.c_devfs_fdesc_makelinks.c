
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int devnode_t ;
typedef int devdirent_t ;
struct TYPE_2__ {int * de_dnp; } ;


 int dev_free_name (int *) ;
 TYPE_1__* dev_root ;
 int devfs_make_symlink (int *,char*,int,char*,int **) ;
 int printf (char*,int) ;

int
devfs_fdesc_makelinks()
{
 int error = 0;
 devdirent_t *stdin_ent = ((void*)0), *stdout_ent = ((void*)0), *stderr_ent = ((void*)0);
 devnode_t *root_devnode = dev_root->de_dnp;


 char in[] = "stdin";
 char out[] = "stdout";
 char err[] = "stderr";
 char zero[] = "fd/0";
 char one[] = "fd/1";
 char two[] = "fd/2";

 if ((error = devfs_make_symlink(root_devnode, in, 0555, zero, &stdin_ent))) {
  printf("Couldn't make stdin, err %d.\n", error);
  goto bad;
 }

 if ((error = devfs_make_symlink(root_devnode, out, 0555, one, &stdout_ent))) {
  printf("Couldn't make stdout, err %d.\n", error);
  goto bad;
 }

 if ((error = devfs_make_symlink(root_devnode, err, 0555, two, &stderr_ent))) {
  printf("Couldn't make stderr, err %d.\n", error);
  goto bad;
 }

 return 0;

bad:
 if (stdin_ent) {
  dev_free_name(stdin_ent);
 }
 if (stdout_ent) {
  dev_free_name(stdout_ent);
 }
 if (stderr_ent) {
  dev_free_name(stderr_ent);
 }

 return error;
}
