
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rglgen_sym_map {int ptr; scalar_t__ sym; } ;
typedef int (* rglgen_proc_address_t ) (scalar_t__) ;
typedef int rglgen_func_t ;
typedef int func ;


 int memcpy (int ,int *,int) ;

void rglgen_resolve_symbols_custom(rglgen_proc_address_t proc,
      const struct rglgen_sym_map *map)
{
   for (; map->sym; map++)
   {
      rglgen_func_t func = proc(map->sym);
      memcpy(map->ptr, &func, sizeof(func));
   }
}
