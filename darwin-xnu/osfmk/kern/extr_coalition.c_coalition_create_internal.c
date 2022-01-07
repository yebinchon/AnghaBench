
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coalition {int type; int role; int ref_count; int should_notify; scalar_t__ id; int coalitions; int lock; int privileged; } ;
typedef scalar_t__ kern_return_t ;
typedef struct coalition* coalition_t ;
typedef scalar_t__ boolean_t ;


 struct coalition* COALITION_NULL ;
 int COALITION_TYPE_MAX ;
 int DBG_MACH_COALITION ;
 int FALSE ;
 int KDBG_RELEASE (int ,scalar_t__,int) ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_COALITION_NEW ;
 int TRUE ;
 int bzero (struct coalition*,int) ;
 scalar_t__ coal_call (struct coalition*,int ,scalar_t__) ;
 int coal_dbg (char*,scalar_t__,int ) ;
 int coal_type_str (int) ;
 int coalition_count ;
 int coalition_next_id ;
 int coalition_zone ;
 int coalitions_lck_attr ;
 int coalitions_lck_grp ;
 int coalitions_list_lock ;
 int coalitions_q ;
 int enqueue_tail (int *,int *) ;
 int init ;
 int lck_mtx_init (int *,int *,int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,struct coalition*) ;

kern_return_t
coalition_create_internal(int type, int role, boolean_t privileged, coalition_t *out)
{
 kern_return_t kr;
 struct coalition *new_coal;

 if (type < 0 || type > COALITION_TYPE_MAX)
  return KERN_INVALID_ARGUMENT;

 new_coal = (struct coalition *)zalloc(coalition_zone);
 if (new_coal == COALITION_NULL)
  return KERN_RESOURCE_SHORTAGE;
 bzero(new_coal, sizeof(*new_coal));

 new_coal->type = type;
 new_coal->role = role;


 kr = coal_call(new_coal, init, privileged);
 if (kr != KERN_SUCCESS) {
  zfree(coalition_zone, new_coal);
  return kr;
 }


 new_coal->ref_count = 2;

 new_coal->privileged = privileged ? TRUE : FALSE;




 lck_mtx_init(&new_coal->lock, &coalitions_lck_grp, &coalitions_lck_attr);

 lck_mtx_lock(&coalitions_list_lock);
 new_coal->id = coalition_next_id++;
 coalition_count++;
 enqueue_tail(&coalitions_q, &new_coal->coalitions);

 KDBG_RELEASE(MACHDBG_CODE(DBG_MACH_COALITION, MACH_COALITION_NEW),
  new_coal->id, new_coal->type);
 lck_mtx_unlock(&coalitions_list_lock);

 coal_dbg("id:%llu, type:%s", new_coal->id, coal_type_str(new_coal->type));

 *out = new_coal;
 return KERN_SUCCESS;
}
