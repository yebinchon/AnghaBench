
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int str; } ;
typedef TYPE_1__ type_str_pair_t ;
typedef int nvs_type_t ;


 int NVS_TYPE_ANY ;
 int TYPE_STR_PAIR_SIZE ;
 scalar_t__ strcmp (char const*,int ) ;
 TYPE_1__* type_str_pair ;

__attribute__((used)) static nvs_type_t str_to_type(const char *type)
{
    for (int i = 0; i < TYPE_STR_PAIR_SIZE; i++) {
        const type_str_pair_t *p = &type_str_pair[i];
        if (strcmp(type, p->str) == 0) {
            return p->type;
        }
    }

    return NVS_TYPE_ANY;
}
