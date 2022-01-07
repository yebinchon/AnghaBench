
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int JSON_OBJECT ;


 int JsonNewNumber (int ) ;
 int JsonSet (int *,char*,int ) ;

UINT JsonSetNumber(JSON_OBJECT *object, char *name, UINT64 number) {
 return JsonSet(object, name, JsonNewNumber(number));
}
