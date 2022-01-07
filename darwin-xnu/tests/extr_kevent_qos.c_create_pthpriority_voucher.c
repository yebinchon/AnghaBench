
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_voucher_t ;
typedef TYPE_1__* mach_voucher_attr_recipe_t ;
typedef int mach_voucher_attr_recipe_data_t ;
typedef size_t mach_voucher_attr_raw_recipe_size_t ;
typedef scalar_t__ mach_voucher_attr_raw_recipe_array_t ;
typedef int mach_msg_priority_t ;
typedef int kern_return_t ;
typedef int ipc_pthread_priority_value_t ;
typedef int ipc_pthread_priority_value ;
struct TYPE_2__ {int content_size; int * content; int previous_voucher; int command; int key; } ;


 int MACH_PORT_NULL ;
 int MACH_VOUCHER_ATTR_KEY_PTHPRIORITY ;
 int MACH_VOUCHER_ATTR_PTHPRIORITY_CREATE ;
 int MACH_VOUCHER_NULL ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int host_create_mach_voucher (int ,scalar_t__,size_t,int *) ;
 int mach_host_self () ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static mach_voucher_t
create_pthpriority_voucher(mach_msg_priority_t qos)
{
 char voucher_buf[sizeof(mach_voucher_attr_recipe_data_t) + sizeof(ipc_pthread_priority_value_t)];

 mach_voucher_t voucher = MACH_PORT_NULL;
 kern_return_t ret;
 ipc_pthread_priority_value_t ipc_pthread_priority_value =
   (ipc_pthread_priority_value_t)qos;

 mach_voucher_attr_raw_recipe_array_t recipes;
 mach_voucher_attr_raw_recipe_size_t recipe_size = 0;
 mach_voucher_attr_recipe_t recipe =
  (mach_voucher_attr_recipe_t)&voucher_buf[recipe_size];

 recipe->key = MACH_VOUCHER_ATTR_KEY_PTHPRIORITY;
 recipe->command = MACH_VOUCHER_ATTR_PTHPRIORITY_CREATE;
 recipe->previous_voucher = MACH_VOUCHER_NULL;
 memcpy((char *)&recipe->content[0], &ipc_pthread_priority_value, sizeof(ipc_pthread_priority_value));
 recipe->content_size = sizeof(ipc_pthread_priority_value_t);
 recipe_size += sizeof(mach_voucher_attr_recipe_data_t) + recipe->content_size;

 recipes = (mach_voucher_attr_raw_recipe_array_t)&voucher_buf[0];

 ret = host_create_mach_voucher(mach_host_self(),
    recipes,
    recipe_size,
    &voucher);

 T_QUIET; T_ASSERT_MACH_SUCCESS(ret, "client host_create_mach_voucher");
 return voucher;
}
