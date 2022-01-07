
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int rowcontext; } ;
typedef int MemoryContext ;
typedef TYPE_1__* CopyOutState ;


 int BinarySignature ;
 int CopySendData (TYPE_1__*,int ,int) ;
 int CopySendInt32 (TYPE_1__*,int const) ;
 int MemoryContextSwitchTo (int ) ;

void
AppendCopyBinaryHeaders(CopyOutState headerOutputState)
{
 const int32 zero = 0;
 MemoryContext oldContext = MemoryContextSwitchTo(headerOutputState->rowcontext);


 CopySendData(headerOutputState, BinarySignature, 11);


 CopySendInt32(headerOutputState, zero);


 CopySendInt32(headerOutputState, zero);

 MemoryContextSwitchTo(oldContext);
}
