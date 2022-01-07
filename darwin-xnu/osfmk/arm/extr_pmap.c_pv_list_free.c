
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pv_entry_t ;


 int PV_FREE_LIST (int *,int *,unsigned int) ;

__attribute__((used)) static void
pv_list_free(
 pv_entry_t *pvehp,
 pv_entry_t *pvetp,
 unsigned int cnt)
{
 PV_FREE_LIST(pvehp, pvetp, cnt);
}
