
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int kctype_subtype_t ;
typedef TYPE_1__* kcdata_subtype_descriptor_t ;
struct TYPE_3__ {char* kcs_name; int kcs_elem_size; int kcs_elem_offset; int kcs_elem_type; int kcs_flags; } ;


 int KCS_SUBTYPE_FLAGS_ARRAY ;
 int KCS_SUBTYPE_PACK_SIZE (int ,int ) ;
 int get_kctype_subtype_size (int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
setup_subtype_array_description(
    kcdata_subtype_descriptor_t desc, kctype_subtype_t type, uint32_t offset, uint32_t count, char * name)
{
 desc->kcs_flags = KCS_SUBTYPE_FLAGS_ARRAY;
 desc->kcs_elem_type = type;
 desc->kcs_elem_offset = offset;
 desc->kcs_elem_size = KCS_SUBTYPE_PACK_SIZE(count, get_kctype_subtype_size(type));
 memcpy(desc->kcs_name, name, sizeof(desc->kcs_name));
 desc->kcs_name[sizeof(desc->kcs_name) - 1] = '\0';
}
