
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_exception_subcode_t ;
typedef int mach_exception_data_type_t ;
typedef int mach_exception_code_t ;


 int DEBUG_KPRINT_SYSCALL_MACH (char*,int,int ,int ) ;
 int EXCEPTION_CODE_MAX ;
 int exception_triage (int,int *,int) ;

void
i386_exception(
 int exc,
 mach_exception_code_t code,
 mach_exception_subcode_t subcode)
{
 mach_exception_data_type_t codes[EXCEPTION_CODE_MAX];

 DEBUG_KPRINT_SYSCALL_MACH("i386_exception: exc=%d code=0x%llx subcode=0x%llx\n",
         exc, code, subcode);
 codes[0] = code;
 codes[1] = subcode;
 exception_triage(exc, codes, 2);

}
