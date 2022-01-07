
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int title ;
typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ Value; scalar_t__ Name; } ;
struct TYPE_8__ {int CapsList; } ;
struct TYPE_7__ {int Rpc; } ;
typedef TYPE_1__ PS ;
typedef int LIST ;
typedef int CT ;
typedef int CONSOLE ;
typedef TYPE_2__ CAPSLIST ;
typedef TYPE_3__ CAPS ;


 int CtFree (int *,int *) ;
 int CtInsert (int *,int *,int *) ;
 int * CtNewStandard () ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 int Format (char*,int,char*,scalar_t__) ;
 int FreeCapsList (TYPE_2__*) ;
 int FreeParamValueList (int *) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_SIZE ;
 int * ParseCommandList (int *,char*,int *,int *,int ) ;
 TYPE_2__* ScGetCapsEx (int ) ;
 scalar_t__ StartWith (scalar_t__,char*) ;
 scalar_t__ StrCmpi (scalar_t__,char*) ;
 int StrLen (scalar_t__) ;
 int UniFormat (int *,int,char*,scalar_t__) ;
 scalar_t__ UniIsEmptyStr (int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniToStru (int *,scalar_t__) ;
 int * _UU (char*) ;

UINT PsCaps(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 PS *ps = (PS *)param;
 CAPSLIST *t;
 UINT i;
 CT *ct;


 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 t = ScGetCapsEx(ps->Rpc);

 ct = CtNewStandard();

 for (i = 0;i < LIST_NUM(t->CapsList);i++)
 {
  CAPS *c = LIST_DATA(t->CapsList, i);
  wchar_t title[MAX_SIZE];
  char name[256];

  Format(name, sizeof(name), "CT_%s", c->Name);

  UniStrCpy(title, sizeof(title), _UU(name));

  if (UniIsEmptyStr(title))
  {
   UniFormat(title, sizeof(title), L"%S", (StrLen(c->Name) >= 2) ? c->Name + 2 : c->Name);
  }

  if (StartWith(c->Name, "b_"))
  {
   bool icon_pass = c->Value == 0 ? 0 : 1;
   if (StrCmpi(c->Name, "b_must_install_pcap") == 0)
   {

    icon_pass = !icon_pass;
   }
   CtInsert(ct, title, c->Value == 0 ? _UU("CAPS_NO") : _UU("CAPS_YES"));
  }
  else
  {
   wchar_t str[64];
   UniToStru(str, c->Value);
   CtInsert(ct, title, str);
  }
 }

 CtFree(ct, c);

 FreeCapsList(t);

 FreeParamValueList(o);

 return 0;
}
