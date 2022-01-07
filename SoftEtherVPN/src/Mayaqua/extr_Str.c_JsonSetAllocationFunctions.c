
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Malloc_Function ;
typedef int JSON_Free_Function ;


 int parson_free ;
 int parson_malloc ;

void JsonSetAllocationFunctions(JSON_Malloc_Function malloc_fun, JSON_Free_Function free_fun) {
 parson_malloc = malloc_fun;
 parson_free = free_fun;
}
