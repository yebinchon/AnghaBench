
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Name; void* Value; } ;
typedef TYPE_1__ STRMAP_ENTRY ;
typedef int LIST ;


 scalar_t__ Search (int *,TYPE_1__*) ;

void *StrMapSearch(LIST *map, char *key)
{
 STRMAP_ENTRY tmp, *result;
 tmp.Name = key;
 result = (STRMAP_ENTRY*)Search(map, &tmp);
 if(result != ((void*)0))
 {
  return result->Value;
 }
 return ((void*)0);
}
