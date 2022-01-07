
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int SRR0; int * GPR; int EXCPT_Number; } ;
typedef TYPE_1__ frame_context ;


 int PC_REGNUM ;
 int SP_REGNUM ;
 int computeSignal (int ) ;
 void* highhex (int ) ;
 void* lowhex (int ) ;
 char* mem2hstr (char*,char*,int) ;
 char* remcomOutBuffer ;
 char* thread2vhstr (char*,int ) ;

__attribute__((used)) static void gdbstub_report_exception(frame_context *frame,s32 thread)
{
 s32 sigval;
 char *ptr;

 ptr = remcomOutBuffer;
 sigval = computeSignal(frame->EXCPT_Number);
 *ptr++ = 'T';
 *ptr++ = highhex(sigval);
 *ptr++ = lowhex(sigval);
 *ptr++ = highhex(SP_REGNUM);
 *ptr++ = lowhex(SP_REGNUM);
 *ptr++ = ':';
 ptr = mem2hstr(ptr,(char*)&frame->GPR[1],4);
 *ptr++ = ';';
 *ptr++ = highhex(PC_REGNUM);
 *ptr++ = lowhex(PC_REGNUM);
 *ptr++ = ':';
 ptr = mem2hstr(ptr,(char*)&frame->SRR0,4);
 *ptr++ = ';';

 *ptr++ = 't';
 *ptr++ = 'h';
 *ptr++ = 'r';
 *ptr++ = 'e';
 *ptr++ = 'a';
 *ptr++ = 'd';
 *ptr++ = ':';
 ptr = thread2vhstr(ptr,thread);
 *ptr++ = ';';

 *ptr++ = '\0';

}
