
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* queue_entry_t ;
typedef TYPE_2__* pv_hashed_entry_t ;
struct TYPE_8__ {void* next; } ;
struct TYPE_9__ {TYPE_1__ qlink; } ;


 int MAX (int ,int) ;
 int MIN (int ,int) ;
 int PV_HASHED_ALLOC_CHUNK_INITIAL ;
 TYPE_2__* PV_HASHED_ENTRY_NULL ;
 int PV_HASHED_FREE_LIST (TYPE_2__*,TYPE_2__*,int) ;
 unsigned int PV_HASHED_KERN_ALLOC_CHUNK_INITIAL ;
 int PV_HASHED_KERN_FREE_LIST (TYPE_2__*,TYPE_2__*,int) ;
 int PV_HASHED_KERN_LOW_WATER_MARK_DEFAULT ;
 int PV_HASHED_LOW_WATER_MARK_DEFAULT ;
 int pv_hashed_alloc_chunk ;
 unsigned int pv_hashed_kern_alloc_chunk ;
 int pv_hashed_kern_low_water_mark ;
 int pv_hashed_list_zone ;
 int pv_hashed_low_water_mark ;
 int sane_size ;
 scalar_t__ zalloc (int ) ;

void
mapping_free_prime(void)
{
 unsigned i;
 pv_hashed_entry_t pvh_e;
 pv_hashed_entry_t pvh_eh;
 pv_hashed_entry_t pvh_et;
 int pv_cnt;


 pv_hashed_low_water_mark = MAX(PV_HASHED_LOW_WATER_MARK_DEFAULT, ((uint32_t)(sane_size >> 30)) * 2000);
 pv_hashed_low_water_mark = MIN(pv_hashed_low_water_mark, 16000);

 pv_hashed_kern_low_water_mark = MAX(PV_HASHED_KERN_LOW_WATER_MARK_DEFAULT, ((uint32_t)(sane_size >> 30)) * 1000);
 pv_hashed_kern_low_water_mark = MIN(pv_hashed_kern_low_water_mark, 16000);
 pv_hashed_kern_alloc_chunk = PV_HASHED_KERN_ALLOC_CHUNK_INITIAL;
 pv_hashed_alloc_chunk = PV_HASHED_ALLOC_CHUNK_INITIAL;

 pv_cnt = 0;
 pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;

 for (i = 0; i < (5 * PV_HASHED_ALLOC_CHUNK_INITIAL); i++) {
  pvh_e = (pv_hashed_entry_t) zalloc(pv_hashed_list_zone);

  pvh_e->qlink.next = (queue_entry_t)pvh_eh;
  pvh_eh = pvh_e;

  if (pvh_et == PV_HASHED_ENTRY_NULL)
          pvh_et = pvh_e;
  pv_cnt++;
 }
 PV_HASHED_FREE_LIST(pvh_eh, pvh_et, pv_cnt);

 pv_cnt = 0;
 pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;
 for (i = 0; i < PV_HASHED_KERN_ALLOC_CHUNK_INITIAL; i++) {
  pvh_e = (pv_hashed_entry_t) zalloc(pv_hashed_list_zone);

  pvh_e->qlink.next = (queue_entry_t)pvh_eh;
  pvh_eh = pvh_e;

  if (pvh_et == PV_HASHED_ENTRY_NULL)
          pvh_et = pvh_e;
  pv_cnt++;
 }
 PV_HASHED_KERN_FREE_LIST(pvh_eh, pvh_et, pv_cnt);
}
