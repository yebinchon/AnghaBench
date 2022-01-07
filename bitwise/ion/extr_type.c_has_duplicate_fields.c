
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num_fields; TYPE_1__* fields; } ;
struct TYPE_7__ {TYPE_2__ aggregate; } ;
typedef TYPE_3__ Type ;
struct TYPE_5__ {scalar_t__ name; } ;



bool has_duplicate_fields(Type *type) {
    for (size_t i = 0; i < type->aggregate.num_fields; i++) {
        for (size_t j = i+1; j < type->aggregate.num_fields; j++) {
            if (type->aggregate.fields[i].name == type->aggregate.fields[j].name) {
                return 1;
            }
        }
    }
    return 0;
}
