
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int JSON_VALUE ;


 int JsonValueGetNumber (int *) ;

UINT64 JsonNumber(JSON_VALUE *value) {
 return JsonValueGetNumber(value);
}
