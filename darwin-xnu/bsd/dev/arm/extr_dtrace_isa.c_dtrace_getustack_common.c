
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef scalar_t__ uint64_t ;


 int ASSERT (int) ;
 scalar_t__ RETURN_OFFSET ;
 scalar_t__ dtrace_fuword32 (scalar_t__) ;

__attribute__((used)) static int
dtrace_getustack_common(uint64_t * pcstack, int pcstack_limit, user_addr_t pc,
   user_addr_t sp)
{
 int ret = 0;

 ASSERT(pcstack == ((void*)0) || pcstack_limit > 0);

 while (pc != 0) {
  ret++;
  if (pcstack != ((void*)0)) {
   *pcstack++ = (uint64_t) pc;
   pcstack_limit--;
   if (pcstack_limit <= 0)
    break;
  }

  if (sp == 0)
   break;

  pc = dtrace_fuword32((sp + RETURN_OFFSET));
  sp = dtrace_fuword32(sp);
 }

 return (ret);
}
