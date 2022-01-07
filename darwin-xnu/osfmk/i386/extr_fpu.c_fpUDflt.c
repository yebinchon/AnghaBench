
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef int uint8_t ;
typedef int boolean_t ;


 scalar_t__ AVX512 ;
 scalar_t__ AVX_XMASK ;
 int DBG (char*,...) ;
 int FALSE ;
 scalar_t__ MAX_X86_INSN_LENGTH ;
 int TRUE ;
 int XCR0 ;
 int assert (int) ;
 scalar_t__ copyin (scalar_t__,char*,int) ;
 int current_thread () ;
 scalar_t__ fpu_capability ;
 int fpu_thread_promote_avx512 (int ) ;
 int thread_exception_return () ;
 scalar_t__ xgetbv (int ) ;

void
fpUDflt(user_addr_t rip)
{
 uint8_t instruction_prefix;
 boolean_t is_AVX512_instruction = FALSE;
 user_addr_t original_rip = rip;
 do {




  if (copyin(rip, (char *) &instruction_prefix, 1)) {
   return;
  }
  DBG("fpUDflt(0x%016llx) prefix: 0x%x\n",
   rip, instruction_prefix);



  switch (instruction_prefix) {
      case 0x2E:
      case 0x36:
      case 0x3E:
      case 0x26:
      case 0x64:
      case 0x65:
      case 0x66:
      case 0x67:

   rip++;
   if ((rip - original_rip) > MAX_X86_INSN_LENGTH) {
    return;
   }
   break;
      case 0x62:
      case 0xC5:
      case 0xC4:
   is_AVX512_instruction = TRUE;
   break;
      default:
   return;
  }
 } while (!is_AVX512_instruction);






 if (fpu_capability != AVX512)
  return;

 assert(xgetbv(XCR0) == AVX_XMASK);

 DBG("fpUDflt() switching xstate to AVX512\n");
 (void) fpu_thread_promote_avx512(current_thread());

 thread_exception_return();

}
