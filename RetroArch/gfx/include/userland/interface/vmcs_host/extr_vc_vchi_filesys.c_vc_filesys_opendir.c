
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VC_FILESYS_OPENDIR ;
 scalar_t__ vc_filesys_single_string (int ,char const*,int ,int) ;

void *vc_filesys_opendir(const char *dirname)
{
   return (void *) vc_filesys_single_string(0, dirname, VC_FILESYS_OPENDIR, 1);
}
