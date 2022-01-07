
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_string_t ;
struct uuid_search_info {int target_uuid; int * found_signing_id; int found_proc; int found_multiple_signing_ids; } ;
typedef int proc_t ;


 int FDLOG (int ,int *,char*,int ) ;
 int FREE (int *,int ) ;
 int LOG_WARNING ;
 int M_TEMP ;
 int PROC_CLAIMED_DONE ;
 int PROC_RETURNED_DONE ;
 int nil_pcb ;
 int uuid_unparse (int ,int ) ;

__attribute__((used)) static int
flow_divert_find_proc_by_uuid_callout(proc_t p, void *arg)
{
 struct uuid_search_info *info = (struct uuid_search_info *)arg;
 int result = PROC_RETURNED_DONE;

 if (info->found_signing_id != ((void*)0)) {
  if (!info->found_multiple_signing_ids) {

   info->found_proc = p;
   result = PROC_CLAIMED_DONE;
  } else {
   uuid_string_t uuid_str;
   uuid_unparse(info->target_uuid, uuid_str);
   FDLOG(LOG_WARNING, &nil_pcb, "Found multiple processes with UUID %s with different signing identifiers", uuid_str);
  }
  FREE(info->found_signing_id, M_TEMP);
  info->found_signing_id = ((void*)0);
 }

 if (result == PROC_RETURNED_DONE) {
  uuid_string_t uuid_str;
  uuid_unparse(info->target_uuid, uuid_str);
  FDLOG(LOG_WARNING, &nil_pcb, "Failed to find a process with UUID %s", uuid_str);
 }

 return result;
}
