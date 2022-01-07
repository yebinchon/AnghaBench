
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VC_FILESYS_TOTALSPACE ;
 int vc_filesys_single_string (int ,char const*,int ,int) ;

int vc_filesys_totalspace(const char *path)
{
   return vc_filesys_single_string(0, path, VC_FILESYS_TOTALSPACE, 1);
}
