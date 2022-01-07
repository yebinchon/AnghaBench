
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetCallStackSymbolInfo ) (int *) ;} ;
typedef int CALLSTACK_DATA ;


 TYPE_1__* os ;
 int stub1 (int *) ;

bool OSGetCallStackSymbolInfo(CALLSTACK_DATA *s)
{
 return os->GetCallStackSymbolInfo(s);
}
