
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
typedef int uuid_string_t ;
struct uuid_search_info {int found_proc; int target_uuid; } ;
typedef int proc_t ;
typedef int info ;
struct TYPE_3__ {scalar_t__ log_level; } ;


 int FDLOG (scalar_t__,TYPE_1__*,char*,int ) ;
 scalar_t__ LOG_INFO ;
 int PROC_ALLPROCLIST ;
 int PROC_NULL ;
 int flow_divert_find_proc_by_uuid_callout ;
 int flow_divert_find_proc_by_uuid_filter ;
 int memset (struct uuid_search_info*,int ,int) ;
 TYPE_1__ nil_pcb ;
 int proc_iterate (int ,int ,struct uuid_search_info*,int ,struct uuid_search_info*) ;
 int uuid_copy (int ,int ) ;
 int uuid_unparse (int ,int ) ;

__attribute__((used)) static proc_t
flow_divert_find_proc_by_uuid(uuid_t uuid)
{
 struct uuid_search_info info;

 if (LOG_INFO <= nil_pcb.log_level) {
  uuid_string_t uuid_str;
  uuid_unparse(uuid, uuid_str);
  FDLOG(LOG_INFO, &nil_pcb, "Looking for process with UUID %s", uuid_str);
 }

 memset(&info, 0, sizeof(info));
 info.found_proc = PROC_NULL;
 uuid_copy(info.target_uuid, uuid);

 proc_iterate(PROC_ALLPROCLIST, flow_divert_find_proc_by_uuid_callout, &info, flow_divert_find_proc_by_uuid_filter, &info);

 return info.found_proc;
}
