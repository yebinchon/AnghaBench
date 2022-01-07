
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kcdata_type_definition {int kct_num_elements; int kct_type_identifier; int * kct_name; } ;
struct kcdata_subtype_descriptor {int dummy; } ;
typedef int mach_vm_address_t ;
typedef int kern_return_t ;
typedef int kcdata_descriptor_t ;
typedef int kc_type_definition ;


 scalar_t__ KCDATA_DESC_MAXLEN ;
 int KCDATA_TYPE_TYPEDEFINTION ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int bzero (struct kcdata_type_definition*,int) ;
 int kcdata_calc_padding (int) ;
 int kcdata_get_memory_addr_with_flavor (int ,int ,int,int ,int*) ;
 int kcdata_memcpy (int ,int,void*,int) ;
 int strlcpy (int *,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

kern_return_t kcdata_add_type_definition(
  kcdata_descriptor_t data,
  uint32_t type_id,
  char *type_name,
  struct kcdata_subtype_descriptor *elements_array_addr,
  uint32_t elements_count)
{
 kern_return_t kr = KERN_SUCCESS;
 struct kcdata_type_definition kc_type_definition;
 mach_vm_address_t user_addr;
 uint32_t total_size = sizeof(struct kcdata_type_definition);
 bzero(&kc_type_definition, sizeof(kc_type_definition));

 if (strlen(type_name) >= KCDATA_DESC_MAXLEN)
  return KERN_INVALID_ARGUMENT;
 strlcpy(&kc_type_definition.kct_name[0], type_name, KCDATA_DESC_MAXLEN);
 kc_type_definition.kct_num_elements = elements_count;
 kc_type_definition.kct_type_identifier = type_id;

 total_size += elements_count * sizeof(struct kcdata_subtype_descriptor);

 if (KERN_SUCCESS != (kr = kcdata_get_memory_addr_with_flavor(data, KCDATA_TYPE_TYPEDEFINTION, total_size,
                                                              kcdata_calc_padding(total_size), &user_addr)))
  return kr;
 if (KERN_SUCCESS != (kr = kcdata_memcpy(data, user_addr, (void *)&kc_type_definition, sizeof(struct kcdata_type_definition))))
  return kr;
 user_addr += sizeof(struct kcdata_type_definition);
 if (KERN_SUCCESS != (kr = kcdata_memcpy(data, user_addr, (void *)elements_array_addr, elements_count * sizeof(struct kcdata_subtype_descriptor))))
  return kr;
 return kr;
}
