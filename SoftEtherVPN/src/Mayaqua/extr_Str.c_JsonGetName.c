
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {char** names; } ;
typedef TYPE_1__ JSON_OBJECT ;


 size_t JsonGetCount (TYPE_1__*) ;

char * JsonGetName(JSON_OBJECT *object, UINT index) {
 if (object == ((void*)0) || index >= JsonGetCount(object)) {
  return ((void*)0);
 }
 return object->names[index];
}
