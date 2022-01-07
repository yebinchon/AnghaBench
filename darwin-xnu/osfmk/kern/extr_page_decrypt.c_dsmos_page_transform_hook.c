
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsmos_page_transform_hook_t ;


 int dsmos_hook ;
 int printf (char*) ;

void
dsmos_page_transform_hook(dsmos_page_transform_hook_t hook)
{

 printf("DSMOS has arrived\n");

 dsmos_hook = hook;
}
