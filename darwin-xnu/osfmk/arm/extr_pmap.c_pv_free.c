
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;


 int PV_FREE_LIST (int *,int *,int) ;

__attribute__((used)) static void
pv_free(
 pv_entry_t *pvep)
{
 PV_FREE_LIST(pvep, pvep, 1);
}
