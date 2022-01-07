
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* mach_voucher_attr_recipe_t ;
typedef int mach_voucher_attr_recipe_data_t ;
typedef int mach_voucher_attr_raw_recipe_size_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
typedef int ipc_pthread_priority_value_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_7__ {scalar_t__ ip_kobject; } ;
struct TYPE_6__ {TYPE_4__* ikm_voucher; } ;
struct TYPE_5__ {int content_size; int content; } ;


 int IP_VALID (TYPE_4__*) ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_VOUCHER_ATTR_KEY_PTHPRIORITY ;
 int assert (int) ;
 scalar_t__ mach_voucher_extract_attr_recipe (scalar_t__,int ,int *,int*) ;
 int memcpy (int *,int ,int) ;

kern_return_t
ipc_get_pthpriority_from_kmsg_voucher(
 ipc_kmsg_t kmsg,
 ipc_pthread_priority_value_t *canonicalize_priority_value)
{
 ipc_voucher_t pthread_priority_voucher;
 mach_voucher_attr_raw_recipe_size_t content_size =
   sizeof(mach_voucher_attr_recipe_data_t) + sizeof(ipc_pthread_priority_value_t);
 uint8_t content_data[content_size];
 mach_voucher_attr_recipe_t cur_content;
 kern_return_t kr = KERN_SUCCESS;

 if (!IP_VALID(kmsg->ikm_voucher)) {
  return KERN_FAILURE;
 }

 pthread_priority_voucher = (ipc_voucher_t)kmsg->ikm_voucher->ip_kobject;
 kr = mach_voucher_extract_attr_recipe(pthread_priority_voucher,
    MACH_VOUCHER_ATTR_KEY_PTHPRIORITY,
    content_data,
    &content_size);
 if (kr != KERN_SUCCESS) {
  return kr;
 }


 if (content_size < sizeof(mach_voucher_attr_recipe_t)) {
  return KERN_INVALID_VALUE;
 }

 cur_content = (mach_voucher_attr_recipe_t) (void *) &content_data[0];
 assert(cur_content->content_size == sizeof(ipc_pthread_priority_value_t));
 memcpy(canonicalize_priority_value, cur_content->content, sizeof(ipc_pthread_priority_value_t));

 return KERN_SUCCESS;
}
