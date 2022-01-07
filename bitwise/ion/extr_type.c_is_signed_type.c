
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_5__ {int sign; } ;
 TYPE_2__* type_metrics ;

bool is_signed_type(Type *type) {
    switch (type->kind) {
    case 133:
        return type_metrics[133].sign;
    case 129:
    case 128:
    case 132:
    case 130:
    case 131:
        return 1;
    default:
        return 0;
    }
}
