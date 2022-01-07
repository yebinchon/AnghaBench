
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonValueGetObject (int *) ;

JSON_OBJECT * JsonObject(JSON_VALUE *value) {
 return JsonValueGetObject(value);
}
