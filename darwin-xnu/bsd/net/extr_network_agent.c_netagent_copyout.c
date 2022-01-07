
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
typedef int user_addr_t ;
typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__ netagent_data_size; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,int,...) ;
 int NETAGENTLOG0 (int ,char*) ;
 int copyout (TYPE_1__*,int ,scalar_t__) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 struct netagent_wrapper* netagent_find_agent_with_uuid (int ) ;
 int netagent_lock ;

int
netagent_copyout(uuid_t agent_uuid, user_addr_t user_addr, u_int32_t user_size)
{
 int error = 0;

 lck_rw_lock_shared(&netagent_lock);
 struct netagent_wrapper *wrapper = netagent_find_agent_with_uuid(agent_uuid);
 if (wrapper == ((void*)0)) {
  NETAGENTLOG0(LOG_DEBUG, "Requested netagent for nexus instance could not be found");
  error = ENOENT;
  goto done;
 }

 u_int32_t total_size = (sizeof(struct netagent) + wrapper->netagent.netagent_data_size);
 if (user_size < total_size) {
  NETAGENTLOG(LOG_ERR, "Provided user buffer is too small (%u < %u)", user_size, total_size);
  error = EINVAL;
  goto done;
 }

 error = copyout(&wrapper->netagent, user_addr, total_size);

 NETAGENTLOG((error ? LOG_ERR : LOG_DEBUG), "Copied agent content (error %d)", error);
done:
 lck_rw_done(&netagent_lock);
 return (error);
}
