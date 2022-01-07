
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char const* str; } ;
typedef TYPE_1__ type_str_pair_t ;
typedef scalar_t__ nvs_type_t ;


 int TYPE_STR_PAIR_SIZE ;
 TYPE_1__* type_str_pair ;

__attribute__((used)) static const char *type_to_str(nvs_type_t type)
{
    for (int i = 0; i < TYPE_STR_PAIR_SIZE; i++) {
        const type_str_pair_t *p = &type_str_pair[i];
        if (p->type == type) {
            return p->str;
        }
    }

    return "Unknown";
}
