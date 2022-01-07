
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int VC_FILESYS_CLOSEDIR ;
 int vc_filesys_single_param (int ,int ) ;

int vc_filesys_closedir(void *dhandle)
{
   return vc_filesys_single_param((uint32_t)dhandle, VC_FILESYS_CLOSEDIR);
}
