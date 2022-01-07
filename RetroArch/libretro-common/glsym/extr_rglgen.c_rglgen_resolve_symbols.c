
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rglgen_proc_address_t ;


 int rglgen_resolve_symbols_custom (int ,int ) ;
 int rglgen_symbol_map ;

void rglgen_resolve_symbols(rglgen_proc_address_t proc)
{
   if (!proc)
      return;

   rglgen_resolve_symbols_custom(proc, rglgen_symbol_map);
}
