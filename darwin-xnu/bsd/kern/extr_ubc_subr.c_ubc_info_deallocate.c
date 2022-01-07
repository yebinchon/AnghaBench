
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubc_info {int dummy; } ;


 int ubc_info_free (struct ubc_info*) ;

void
ubc_info_deallocate(struct ubc_info *uip)
{
        ubc_info_free(uip);
}
