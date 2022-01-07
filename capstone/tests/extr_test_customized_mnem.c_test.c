
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int csh ;
struct TYPE_2__ {char* member_1; int member_0; } ;
typedef TYPE_1__ cs_opt_mnem ;
typedef int cs_err ;


 int CS_ARCH_X86 ;
 int CS_MODE_32 ;
 int CS_OPT_MNEMONIC ;
 int X86_INS_JNE ;
 int abort () ;
 int cs_close (int *) ;
 int cs_open (int ,int ,int *) ;
 int cs_option (int ,int ,size_t) ;
 int print_insn (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void test()
{
 csh handle;
 cs_err err;

 cs_opt_mnem my_mnem = { X86_INS_JNE, "jnz" };

 cs_opt_mnem default_mnem = { X86_INS_JNE, ((void*)0) };

 err = cs_open(CS_ARCH_X86, CS_MODE_32, &handle);
 if (err) {
  printf("Failed on cs_open() with error returned: %u\n", err);
  abort();
 }


 printf("Disassemble X86 code with default instruction mnemonic\n");
 print_insn(handle);


 printf("\nNow customize engine to change mnemonic from 'JNE' to 'JNZ'\n");
 cs_option(handle, CS_OPT_MNEMONIC, (size_t)&my_mnem);


 print_insn(handle);


 printf("\nReset engine to use the default mnemonic\n");
 cs_option(handle, CS_OPT_MNEMONIC, (size_t)&default_mnem);


 print_insn(handle);


 cs_close(&handle);
}
