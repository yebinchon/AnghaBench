
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VC_FILESYS_CHKDSK ;
 int vc_filesys_single_string (int,char const*,int ,int) ;

int vc_filesys_chkdsk(const char *path, int fix_errors)
{
   return vc_filesys_single_string(fix_errors, path, VC_FILESYS_CHKDSK, 1);
}
