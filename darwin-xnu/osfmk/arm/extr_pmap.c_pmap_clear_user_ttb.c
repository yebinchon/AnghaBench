
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmap_clear_user_ttb_internal () ;

void
pmap_clear_user_ttb(void)
{
 pmap_clear_user_ttb_internal();
}
