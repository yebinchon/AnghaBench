
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fe_msgbuf; } ;
typedef TYPE_1__* CopyOutState ;


 int appendBinaryStringInfo (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
CopySendString(CopyOutState outputState, const char *str)
{
 appendBinaryStringInfo(outputState->fe_msgbuf, str, strlen(str));
}
