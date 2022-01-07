
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int rowcontext; } ;
typedef int MemoryContext ;
typedef TYPE_1__* CopyOutState ;


 int CopySendInt16 (TYPE_1__*,int) ;
 int MemoryContextSwitchTo (int ) ;

void
AppendCopyBinaryFooters(CopyOutState footerOutputState)
{
 int16 negative = -1;
 MemoryContext oldContext = MemoryContextSwitchTo(footerOutputState->rowcontext);

 CopySendInt16(footerOutputState, negative);

 MemoryContextSwitchTo(oldContext);
}
