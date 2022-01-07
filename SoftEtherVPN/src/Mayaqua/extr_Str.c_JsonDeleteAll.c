
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ count; int * values; int * names; } ;
typedef TYPE_1__ JSON_OBJECT ;


 size_t JSON_RET_ERROR ;
 size_t JSON_RET_OK ;
 int JsonFree (int ) ;
 size_t JsonGetCount (TYPE_1__*) ;
 int parson_free (int ) ;

UINT JsonDeleteAll(JSON_OBJECT *object) {
 UINT i = 0;
 if (object == ((void*)0)) {
  return JSON_RET_ERROR;
 }
 for (i = 0; i < JsonGetCount(object); i++) {
  parson_free(object->names[i]);
  JsonFree(object->values[i]);
 }
 object->count = 0;
 return JSON_RET_OK;
}
