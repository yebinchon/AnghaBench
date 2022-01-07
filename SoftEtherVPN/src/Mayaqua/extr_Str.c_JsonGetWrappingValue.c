
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * wrapping_value; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_OBJECT ;



JSON_VALUE *JsonGetWrappingValue(JSON_OBJECT *object) {
 return object->wrapping_value;
}
