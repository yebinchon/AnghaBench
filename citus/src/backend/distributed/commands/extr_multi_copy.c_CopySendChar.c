
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fe_msgbuf; } ;
typedef TYPE_1__* CopyOutState ;


 int appendStringInfoCharMacro (int ,char) ;

__attribute__((used)) static void
CopySendChar(CopyOutState outputState, char c)
{
 appendStringInfoCharMacro(outputState->fe_msgbuf, c);
}
