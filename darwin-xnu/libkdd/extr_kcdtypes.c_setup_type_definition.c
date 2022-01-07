
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct kcdata_type_definition {char* kct_name; void* kct_num_elements; void* kct_type_identifier; } ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
setup_type_definition(struct kcdata_type_definition * d, uint32_t type, uint32_t num_elems, char * name)
{
 d->kct_type_identifier = type;
 d->kct_num_elements = num_elems;
 memcpy(d->kct_name, name, sizeof(d->kct_name));
 d->kct_name[sizeof(d->kct_name) - 1] = '\0';
}
