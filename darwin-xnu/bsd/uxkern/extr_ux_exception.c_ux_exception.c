
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_exception_subcode_t ;
typedef int mach_exception_code_t ;
 int KERN_INVALID_ADDRESS ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGEMT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGKILL ;
 int SIGPIPE ;
 int SIGSEGV ;
 int SIGSYS ;
 int SIGTRAP ;
 int machine_exception (int,int ,int ) ;

__attribute__((used)) static int
ux_exception(int exception,
             mach_exception_code_t code,
             mach_exception_subcode_t subcode)
{
 int machine_signal = 0;


 if ((machine_signal = machine_exception(exception, code, subcode)) != 0)
  return machine_signal;

 switch(exception) {
  case 136:
   if (code == KERN_INVALID_ADDRESS)
    return SIGSEGV;
   else
    return SIGBUS;

  case 135:
   return SIGILL;

  case 137:
   return SIGFPE;

  case 133:
   return SIGEMT;

  case 132:
   switch (code) {
    case 128:
     return SIGSYS;
    case 129:
     return SIGPIPE;
    case 130:
     return SIGABRT;
    case 131:
     return SIGKILL;
   }
   break;

  case 134:
   return SIGTRAP;
 }

 return 0;
}
