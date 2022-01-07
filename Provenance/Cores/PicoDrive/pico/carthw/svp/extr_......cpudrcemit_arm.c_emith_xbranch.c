
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_ANOMALY ;
 int EL_STATUS ;
 int EL_SVP ;
 int EMIT (int ) ;
 int EOP_ADD_IMM (int,int,int ,int) ;
 int EOP_C_AM2_IMM (int,int,int ,int,int,int,int ) ;
 int EOP_C_B (int,int,int) ;
 int EOP_MOV_REG_SIMPLE (int,int) ;
 int elprintf (int,char*,void*,scalar_t__) ;
 int exit (int) ;
 int is_offset_24 (int) ;
 scalar_t__ tcache_ptr ;

__attribute__((used)) static int emith_xbranch(int cond, void *target, int is_call)
{
 int val = (u32 *)target - (u32 *)tcache_ptr - 2;
 int direct = is_offset_24(val);
 u32 *start_ptr = (u32 *)tcache_ptr;

 if (direct)
 {
  EOP_C_B(cond,is_call,val & 0xffffff);
 }
 else
 {
  elprintf(EL_STATUS|EL_SVP|EL_ANOMALY, "indirect jmp %08x->%08x", target, tcache_ptr);
  exit(1);

 }

 return (u32 *)tcache_ptr - start_ptr;
}
