
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int s32 ;
struct TYPE_12__ {scalar_t__ SRR0; int SRR1; int FPSCR; int XER; int CTR; int LR; int CR; scalar_t__ FPR; scalar_t__ GPR; } ;
typedef TYPE_1__ frame_context ;
struct TYPE_13__ {scalar_t__ (* open ) (TYPE_2__*) ;int (* close ) (TYPE_2__*) ;int (* wait ) (TYPE_2__*) ;} ;


 int BUFMAX ;
 int MSR_SE ;
 scalar_t__ __breakinst ;
 TYPE_2__* current_device ;
 TYPE_1__ current_thread_registers ;
 int dbg_active ;
 int dbg_instep ;
 int gdbstub_getcurrentthread () ;
 int gdbstub_getthreadregs (int,TYPE_1__*) ;
 int * gdbstub_indextoid (int) ;
 int gdbstub_report_exception (TYPE_1__*,int) ;
 int gdbstub_setthreadregs (int,TYPE_1__*) ;
 int getpacket (int*) ;
 int hexToInt (char**,int*) ;
 int insert_bp (char*) ;
 char* mem2hstr (char*,void*,int) ;
 int parsezbreak (int*,int*,char**,scalar_t__*) ;
 int process_query (int*,char*,int) ;
 int putpacket (char*) ;
 int* remcomInBuffer ;
 char* remcomOutBuffer ;
 int remove_bp (char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int * vhstr2thread (int*,int*) ;

void c_debug_handler(frame_context *frame)
{
 char *ptr;
 s32 addr,len;
 s32 thread,current_thread;
 s32 host_has_detached;
 frame_context *regptr;

 thread = gdbstub_getcurrentthread();
 current_thread = thread;

 if(current_device->open(current_device)<0) return;

 if(dbg_active) {
  gdbstub_report_exception(frame,thread);
  putpacket(remcomOutBuffer);
 }

 if(frame->SRR0==(u32)__breakinst) frame->SRR0 += 4;

 host_has_detached = 0;
 while(!host_has_detached) {
  remcomOutBuffer[0]= 0;
  getpacket(remcomInBuffer);
  switch(remcomInBuffer[0]) {
   case '?':
    gdbstub_report_exception(frame,thread);
    break;
   case 'D':
    dbg_instep = 0;
    dbg_active = 0;
    frame->SRR1 &= ~MSR_SE;
    strcpy(remcomOutBuffer,"OK");
    host_has_detached = 1;
    break;
   case 'k':
    dbg_instep = 0;
    dbg_active = 0;
    frame->SRR1 &= ~MSR_SE;
    frame->SRR0 = 0x80001800;
    host_has_detached = 1;
    goto exit;
   case 'g':
    regptr = frame;
    ptr = remcomOutBuffer;
    if(current_thread!=thread) regptr = &current_thread_registers;

    ptr = mem2hstr(ptr,(char*)regptr->GPR,32*4);
    ptr = mem2hstr(ptr,(char*)regptr->FPR,32*8);
    ptr = mem2hstr(ptr,(char*)&regptr->SRR0,4);
    ptr = mem2hstr(ptr,(char*)&regptr->SRR1,4);
    ptr = mem2hstr(ptr,(char*)&regptr->CR,4);
    ptr = mem2hstr(ptr,(char*)&regptr->LR,4);
    ptr = mem2hstr(ptr,(char*)&regptr->CTR,4);
    ptr = mem2hstr(ptr,(char*)&regptr->XER,4);
    ptr = mem2hstr(ptr,(char*)&regptr->FPSCR,4);
    break;
   case 'm':
    ptr = &remcomInBuffer[1];
    if(hexToInt(&ptr,&addr) && ((addr&0xC0000000)==0xC0000000 || (addr&0xC0000000)==0x80000000)
     && *ptr++==','
     && hexToInt(&ptr,&len) && len<=((BUFMAX - 4)/2))
     mem2hstr(remcomOutBuffer,(void*)addr,len);
    else
     strcpy(remcomOutBuffer,"E00");
    break;
   case 'q':
    process_query(remcomInBuffer,remcomOutBuffer,thread);
    break;
   case 'c':
    dbg_instep = 0;
    dbg_active = 1;
    frame->SRR1 &= ~MSR_SE;
    current_device->wait(current_device);
    goto exit;
   case 's':
    dbg_instep = 1;
    dbg_active = 1;
    frame->SRR1 |= MSR_SE;
    current_device->wait(current_device);
    goto exit;
   case 'z':
    {
     s32 ret,type;
     u32 len;
     char *addr;

     ret = parsezbreak(remcomInBuffer,&type,&addr,&len);
     if(!ret) {
      strcpy(remcomOutBuffer,"E01");
      break;
     }
     if(type!=0) break;

     if(len<4) {
      strcpy(remcomOutBuffer,"E02");
      break;
     }

     ret = remove_bp(addr);
     if(!ret) {
      strcpy(remcomOutBuffer,"E03");
      break;
     }
     strcpy(remcomOutBuffer,"OK");
    }
    break;
   case 'H':
    if(remcomInBuffer[1]=='g')
    {
     s32 tmp,ret;

     if(vhstr2thread(&remcomInBuffer[2],&tmp)==((void*)0)) {
      strcpy(remcomOutBuffer,"E01");
      break;
     }
     if(!tmp) tmp = thread;
     if(tmp==current_thread) {
      strcpy(remcomOutBuffer,"OK");
      break;
     }

     if(current_thread!=thread) ret = gdbstub_setthreadregs(current_thread,&current_thread_registers);
     if(tmp!=thread) {
      ret = gdbstub_getthreadregs(tmp,&current_thread_registers);
      if(!ret) {
       strcpy(remcomOutBuffer,"E02");
       break;
      }
     }
     current_thread= tmp;
    }
    strcpy(remcomOutBuffer,"OK");
    break;
   case 'T':
    {
     s32 tmp;

     if(vhstr2thread(&remcomInBuffer[1],&tmp)==((void*)0)) {
      strcpy(remcomOutBuffer,"E01");
      break;
     }
     if(gdbstub_indextoid(tmp)==((void*)0)) strcpy(remcomOutBuffer,"E02");
     else strcpy(remcomOutBuffer,"OK");
    }
    break;
   case 'Z':
    {
     s32 ret,type;
     u32 len;
     char *addr;

     ret = parsezbreak(remcomInBuffer,&type,&addr,&len);
     if(!ret) {
      strcpy(remcomOutBuffer,"E01");
      break;
     }
     if(type!=0) {
      strcpy(remcomOutBuffer,"E02");
      break;
     }
     if(len<4) {
      strcpy(remcomOutBuffer,"E03");
      break;
     }

     ret = insert_bp(addr);
     if(!ret) {
      strcpy(remcomOutBuffer,"E04");
      break;
     }
     strcpy(remcomOutBuffer,"OK");
    }
    break;
  }
  putpacket(remcomOutBuffer);
 }
 current_device->close(current_device);
exit:
 return;
}
