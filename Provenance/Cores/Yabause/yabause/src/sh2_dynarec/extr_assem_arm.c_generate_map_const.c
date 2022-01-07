
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dynarec_local ;
 int emit_movimm (int,int) ;
 scalar_t__ memory_map ;

generate_map_const(u32 addr,int reg) {

  emit_movimm((addr>>12)+(((u32)memory_map-(u32)&dynarec_local)>>2),reg);
}
