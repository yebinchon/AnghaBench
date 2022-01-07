
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_branch_tracing () ;
 unsigned int* pc_buffer ;
 unsigned int* pc_buflast ;
 unsigned int* pc_bufptr ;
 unsigned int* pc_trace_buf ;
 int pc_trace_cnt ;
 unsigned int pcsample_beg ;
 scalar_t__ pcsample_enable ;
 unsigned int pcsample_end ;
 int wakeup (scalar_t__*) ;

void
add_pcbuffer(void)
{
 int i;
 unsigned int pc;

 if (!pcsample_enable)
   return;

 for (i=0; i < pc_trace_cnt; i++)
   {
     pc = pc_trace_buf[i];

     if ((pcsample_beg <= pc) && (pc < pcsample_end))
       {
  if (pc_bufptr > pc_buffer)
    {
      if ( (*(pc_bufptr-1)) == pc )
        continue;
    }


  *pc_bufptr = pc;
  pc_bufptr++;
       }
   }


 if ((pc_bufptr + pc_trace_cnt) >= pc_buflast)
   {
     pcsample_enable = 0;
     (void)disable_branch_tracing();
     wakeup(&pcsample_enable);
   }
 return;
}
