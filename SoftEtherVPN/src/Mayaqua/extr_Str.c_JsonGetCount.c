
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ JSON_OBJECT ;



UINT JsonGetCount(JSON_OBJECT *object) {
 return object ? object->count : 0;
}
