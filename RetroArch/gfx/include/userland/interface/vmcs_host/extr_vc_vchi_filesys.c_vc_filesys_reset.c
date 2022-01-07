
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VC_FILESYS_RESET ;
 int vc_filesys_single_param (int ,int ) ;

int vc_filesys_reset()
{
   return vc_filesys_single_param(0, VC_FILESYS_RESET);
}
