
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int ** values; int * names; } ;
typedef int JSON_VALUE ;
typedef TYPE_1__ JSON_OBJECT ;


 size_t JsonGetCount (TYPE_1__*) ;
 size_t StrLen (int ) ;
 scalar_t__ strncmp (int ,char*,size_t) ;

__attribute__((used)) static JSON_VALUE * json_object_nget_value(JSON_OBJECT *object, char *name, UINT n) {
 UINT i, name_length;
 for (i = 0; i < JsonGetCount(object); i++) {
  name_length = StrLen(object->names[i]);
  if (name_length != n) {
   continue;
  }
  if (strncmp(object->names[i], name, n) == 0) {
   return object->values[i];
  }
 }
 return ((void*)0);
}
