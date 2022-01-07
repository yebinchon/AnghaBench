
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ err_no; } ;


 TYPE_1__ vc_filesys_client ;

int vc_filesys_errno(void)
{
   return (int) vc_filesys_client.err_no;
}
