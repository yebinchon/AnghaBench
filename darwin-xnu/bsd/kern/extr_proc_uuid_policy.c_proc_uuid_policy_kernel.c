
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;


 int EINVAL ;



 int proc_uuid_policy_clear (int) ;
 int proc_uuid_policy_insert (int ,int) ;
 int proc_uuid_policy_remove (int ,int) ;

int proc_uuid_policy_kernel(uint32_t operation, uuid_t uuid, uint32_t flags)
{
 int error = 0;

 switch (operation) {
  case 129:
   error = proc_uuid_policy_clear(flags);
   break;

  case 130:
   error = proc_uuid_policy_insert(uuid, flags);
   break;

  case 128:
   error = proc_uuid_policy_remove(uuid, flags);
   break;

  default:
   error = EINVAL;
   break;
 }

 return error;
}
