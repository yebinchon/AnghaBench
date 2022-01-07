
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int VC_FILESYS_CLOSE ;
 int vc_filesys_single_param (int ,int ) ;

int vc_filesys_close(int fildes)
{
   return vc_filesys_single_param((uint32_t) fildes, VC_FILESYS_CLOSE);
}
