
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_11__ {unsigned int entry_count; scalar_t__ js_gencount; scalar_t__ notification_time; int snapshot_time; int * entries; } ;
typedef TYPE_2__ memorystatus_jetsam_snapshot_t ;
typedef int memorystatus_jetsam_snapshot_entry_t ;
struct TYPE_10__ {int * p_uuid; int p_pid; } ;


 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int MEMORYSTATUS_DEBUG (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int TRUE ;
 int mach_absolute_time () ;
 TYPE_1__* memorystatus_get_first_proc_locked (unsigned int*,int ) ;
 TYPE_1__* memorystatus_get_next_proc_locked (unsigned int*,TYPE_1__*,int ) ;
 scalar_t__ memorystatus_init_jetsam_snapshot_entry_locked (TYPE_1__*,int *,scalar_t__) ;
 int memorystatus_init_snapshot_vmstats (TYPE_2__*) ;
 TYPE_2__* memorystatus_jetsam_snapshot ;
 unsigned int memorystatus_jetsam_snapshot_count ;
 unsigned int memorystatus_jetsam_snapshot_max ;
 int proc_list_mlock ;

__attribute__((used)) static void
memorystatus_init_jetsam_snapshot_locked(memorystatus_jetsam_snapshot_t *od_snapshot, uint32_t ods_list_count )
{
 proc_t p, next_p;
 unsigned int b = 0, i = 0;

 memorystatus_jetsam_snapshot_t *snapshot = ((void*)0);
 memorystatus_jetsam_snapshot_entry_t *snapshot_list = ((void*)0);
 unsigned int snapshot_max = 0;

 LCK_MTX_ASSERT(proc_list_mlock, LCK_MTX_ASSERT_OWNED);

 if (od_snapshot) {



  snapshot = od_snapshot;
  snapshot_list = od_snapshot->entries;
  snapshot_max = ods_list_count;
 } else {



  snapshot = memorystatus_jetsam_snapshot;
  snapshot_list = memorystatus_jetsam_snapshot->entries;
  snapshot_max = memorystatus_jetsam_snapshot_max;
 }




 memorystatus_init_snapshot_vmstats(snapshot);
 snapshot->snapshot_time = mach_absolute_time();
 snapshot->notification_time = 0;
 snapshot->js_gencount = 0;

 next_p = memorystatus_get_first_proc_locked(&b, TRUE);
 while (next_p) {
  p = next_p;
  next_p = memorystatus_get_next_proc_locked(&b, p, TRUE);

  if (FALSE == memorystatus_init_jetsam_snapshot_entry_locked(p, &snapshot_list[i], snapshot->js_gencount)) {
   continue;
  }

  MEMORYSTATUS_DEBUG(0, "jetsam snapshot pid %d, uuid = %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
   p->p_pid,
   p->p_uuid[0], p->p_uuid[1], p->p_uuid[2], p->p_uuid[3], p->p_uuid[4], p->p_uuid[5], p->p_uuid[6], p->p_uuid[7],
   p->p_uuid[8], p->p_uuid[9], p->p_uuid[10], p->p_uuid[11], p->p_uuid[12], p->p_uuid[13], p->p_uuid[14], p->p_uuid[15]);

  if (++i == snapshot_max) {
   break;
  }
 }

 snapshot->entry_count = i;

 if (!od_snapshot) {

  memorystatus_jetsam_snapshot_count = i;
 }
}
