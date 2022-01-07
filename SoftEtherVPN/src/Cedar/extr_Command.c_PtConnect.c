
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_5__ {int LastError; } ;
typedef TYPE_1__ PT ;
typedef int CONSOLE ;


 int ERR_INTERNAL_ERROR ;
 int FreePt (TYPE_1__*) ;
 TYPE_1__* NewPt (int *,int *) ;
 int PtMain (TYPE_1__*) ;

UINT PtConnect(CONSOLE *c, wchar_t *cmdline)
{
 PT *pt;
 UINT ret = 0;

 if (c == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 pt = NewPt(c, cmdline);

 PtMain(pt);

 ret = pt->LastError;

 FreePt(pt);

 return ret;
}
