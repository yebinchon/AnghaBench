
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef int LIST ;
typedef TYPE_1__ CONSOLE ;


 char* CopyUniToStr (int *) ;
 int Free (char*) ;
 int ReleaseList (int *) ;
 int * StrToPortList (char*) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalPortList(CONSOLE *c, wchar_t *str, void *param)
{
 char *s;
 bool ret = 0;
 LIST *o;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 s = CopyUniToStr(str);

 o = StrToPortList(s);

 if (o != ((void*)0))
 {
  ret = 1;
 }

 ReleaseList(o);

 Free(s);

 if (ret == 0)
 {
  c->Write(c, _UU("CMD_PORTLIST_EVAL_FAILED"));
 }

 return ret;
}
