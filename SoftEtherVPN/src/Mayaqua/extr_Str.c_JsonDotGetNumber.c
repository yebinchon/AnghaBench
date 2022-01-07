
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int JSON_OBJECT ;


 int JsonDotGet (int *,char*) ;
 int JsonValueGetNumber (int ) ;

UINT64 JsonDotGetNumber(JSON_OBJECT *object, char *name) {
 return JsonValueGetNumber(JsonDotGet(object, name));
}
