
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int VC_FILESYS_OPEN ;
 int vc_filesys_single_string (int ,char const*,int ,int) ;

int vc_filesys_open(const char *path, int vc_oflag)
{
   return vc_filesys_single_string((uint32_t) vc_oflag, path, VC_FILESYS_OPEN, 1);
}
