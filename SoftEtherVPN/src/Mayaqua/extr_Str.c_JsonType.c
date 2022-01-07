
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;


 int JsonValueGetType (int *) ;

UINT JsonType(JSON_VALUE *value) {
 return JsonValueGetType(value);
}
