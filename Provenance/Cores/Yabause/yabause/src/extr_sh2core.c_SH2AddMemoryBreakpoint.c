
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {size_t nummemorybreakpoints; TYPE_1__* memorybreakpoint; } ;
struct TYPE_8__ {TYPE_2__ bp; } ;
struct TYPE_6__ {int addr; int flags; int * oldwritelong; int * oldwriteword; int * oldwritebyte; int * oldreadword; int * oldreadbyte; int * oldreadlong; } ;
typedef TYPE_3__ SH2_struct ;


 int BREAK_BYTEREAD ;
 int BREAK_BYTEWRITE ;
 int BREAK_LONGREAD ;
 int BREAK_LONGWRITE ;
 int BREAK_WORDREAD ;
 int BREAK_WORDWRITE ;
 int CheckForMemoryBreakpointDupes (TYPE_3__*,int,int,int*) ;
 size_t MAX_BREAKPOINTS ;
 int ** ReadByteList ;
 int ** ReadLongList ;
 int ** ReadWordList ;
 int SH2MemoryBreakpointReadByte ;
 int SH2MemoryBreakpointReadLong ;
 int SH2MemoryBreakpointReadWord ;
 int SH2MemoryBreakpointWriteByte ;
 int SH2MemoryBreakpointWriteLong ;
 int SH2MemoryBreakpointWriteWord ;
 int ** WriteByteList ;
 int ** WriteLongList ;
 int ** WriteWordList ;

int SH2AddMemoryBreakpoint(SH2_struct *context, u32 addr, u32 flags) {
   int which;
   int i;

   if (flags == 0)
      return -1;

   if (context->bp.nummemorybreakpoints < MAX_BREAKPOINTS) {

      switch (addr >> 29) {
         case 0x0:
         case 0x1:
         case 0x5:
            break;
         default:
            return -1;
      }

      addr &= 0x0FFFFFFF;


      for (i = 0; i < context->bp.nummemorybreakpoints; i++)
      {
         if (addr == context->bp.memorybreakpoint[i].addr)
            return -1;
      }

      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].addr = addr;
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].flags = flags;

      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadbyte = ReadByteList[(addr >> 16) & 0xFFF];
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadword = ReadWordList[(addr >> 16) & 0xFFF];
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadlong = ReadLongList[(addr >> 16) & 0xFFF];
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwritebyte = WriteByteList[(addr >> 16) & 0xFFF];
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwriteword = WriteWordList[(addr >> 16) & 0xFFF];
      context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwritelong = WriteLongList[(addr >> 16) & 0xFFF];

      if (flags & BREAK_BYTEREAD)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_BYTEREAD, &which))
            ReadByteList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointReadByte;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadbyte = context->bp.memorybreakpoint[which].oldreadbyte;
      }

      if (flags & BREAK_WORDREAD)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_WORDREAD, &which))
            ReadWordList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointReadWord;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadword = context->bp.memorybreakpoint[which].oldreadword;
      }

      if (flags & BREAK_LONGREAD)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_LONGREAD, &which))
            ReadLongList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointReadLong;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldreadword = context->bp.memorybreakpoint[which].oldreadword;
      }

      if (flags & BREAK_BYTEWRITE)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_BYTEWRITE, &which))
            WriteByteList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointWriteByte;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwritebyte = context->bp.memorybreakpoint[which].oldwritebyte;
      }

      if (flags & BREAK_WORDWRITE)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_WORDWRITE, &which))
            WriteWordList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointWriteWord;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwriteword = context->bp.memorybreakpoint[which].oldwriteword;
      }

      if (flags & BREAK_LONGWRITE)
      {

         if (!CheckForMemoryBreakpointDupes(context, addr, BREAK_LONGWRITE, &which))
            WriteLongList[(addr >> 16) & 0xFFF] = &SH2MemoryBreakpointWriteLong;
         else

            context->bp.memorybreakpoint[context->bp.nummemorybreakpoints].oldwritelong = context->bp.memorybreakpoint[which].oldwritelong;
      }

      context->bp.nummemorybreakpoints++;

      return 0;
   }

   return -1;
}
