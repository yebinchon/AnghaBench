
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int wchar_t ;
typedef int args ;
typedef int X_SERIAL ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int Size; int Buf; } ;
struct TYPE_17__ {char* member_0; int member_2; int member_1; } ;
struct TYPE_16__ {int (* Write ) (TYPE_2__*,int *) ;} ;
struct TYPE_15__ {char* member_0; TYPE_3__* member_4; int * member_3; int * member_2; int * member_1; } ;
typedef TYPE_1__ PARAM ;
typedef int NAME ;
typedef int LIST ;
typedef int K ;
typedef TYPE_2__ CONSOLE ;
typedef TYPE_3__ CMD_EVAL_MIN_MAX ;
typedef TYPE_4__ BUF ;


 int CheckXandK (int *,int *) ;
 int * CmdEvalIsFile ;
 int * CmdEvalMinMax ;
 int * CmdEvalNotEmpty ;
 int CmdPrintError (TYPE_2__*,scalar_t__) ;
 int * CmdPrompt ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int * FileToKW (int ,int,int *) ;
 int * FileToXW (int ) ;
 int FreeBuf (TYPE_4__*) ;
 int FreeK (int *) ;
 int FreeName (int *) ;
 int FreeParamValueList (int *) ;
 int FreeX (int *) ;
 int FreeXSerial (int *) ;
 scalar_t__ GetParamInt (int *,char*) ;
 int GetParamStr (int *,char*) ;
 int GetParamUniStr (int *,char*) ;
 int IsEmptyStr (int ) ;
 int KToFileW (int *,int ,int,int *) ;
 int * NewName (int ,int ,int ,int ,int ,int ) ;
 int * NewRootX (int *,int *,int *,scalar_t__,int *) ;
 int * NewX (int *,int *,int *,int *,scalar_t__,int *) ;
 int * NewXSerial (int ,int) ;
 int * ParseCommandList (TYPE_2__*,char*,int *,TYPE_1__*,int) ;
 int RsaGen (int **,int **,int) ;
 TYPE_4__* StrToBin (int ) ;
 int XToFileW (int *,int ,int) ;
 int * _UU (char*) ;
 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;
 int stub3 (TYPE_2__*,int *) ;
 int stub4 (TYPE_2__*,int *) ;

UINT PtMakeCert(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 UINT ret = ERR_NO_ERROR;
 X *x = ((void*)0);
 K *pub = ((void*)0);
 K *pri = ((void*)0);
 NAME *n;
 X_SERIAL *x_serial = ((void*)0);
 BUF *buf;
 UINT days;
 X *root_x = ((void*)0);
 K *root_k = ((void*)0);

 CMD_EVAL_MIN_MAX minmax =
 {
  "CMD_MakeCert_EVAL_EXPIRES",
  0,
  10950,
 };
 PARAM args[] =
 {
  {"CN", CmdPrompt, _UU("CMD_MakeCert_PROMPT_CN"), ((void*)0), ((void*)0)},
  {"O", CmdPrompt, _UU("CMD_MakeCert_PROMPT_O"), ((void*)0), ((void*)0)},
  {"OU", CmdPrompt, _UU("CMD_MakeCert_PROMPT_OU"), ((void*)0), ((void*)0)},
  {"C", CmdPrompt, _UU("CMD_MakeCert_PROMPT_C"), ((void*)0), ((void*)0)},
  {"ST", CmdPrompt, _UU("CMD_MakeCert_PROMPT_ST"), ((void*)0), ((void*)0)},
  {"L", CmdPrompt, _UU("CMD_MakeCert_PROMPT_L"), ((void*)0), ((void*)0)},
  {"SERIAL", CmdPrompt, _UU("CMD_MakeCert_PROMPT_SERIAL"), ((void*)0), ((void*)0)},
  {"EXPIRES", CmdPrompt, _UU("CMD_MakeCert_PROMPT_EXPIRES"), CmdEvalMinMax, &minmax},
  {"SIGNCERT", ((void*)0), ((void*)0), CmdEvalIsFile, ((void*)0)},
  {"SIGNKEY", ((void*)0), ((void*)0), CmdEvalIsFile, ((void*)0)},
  {"SAVECERT", CmdPrompt, _UU("CMD_MakeCert_PROMPT_SAVECERT"), CmdEvalNotEmpty, ((void*)0)},
  {"SAVEKEY", CmdPrompt, _UU("CMD_MakeCert_PROMPT_SAVEKEY"), CmdEvalNotEmpty, ((void*)0)},
 };


 o = ParseCommandList(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (IsEmptyStr(GetParamStr(o, "SIGNCERT")) == 0 && IsEmptyStr(GetParamStr(o, "SIGNKEY")) == 0)
 {
  root_x = FileToXW(GetParamUniStr(o, "SIGNCERT"));
  root_k = FileToKW(GetParamUniStr(o, "SIGNKEY"), 1, ((void*)0));

  if (root_x == ((void*)0) || root_k == ((void*)0) || CheckXandK(root_x, root_k) == 0)
  {
   ret = ERR_INTERNAL_ERROR;

   c->Write(c, _UU("CMD_MakeCert_ERROR_SIGNKEY"));
  }
 }

 if (ret == ERR_NO_ERROR)
 {
  buf = StrToBin(GetParamStr(o, "SERIAL"));
  if (buf != ((void*)0) && buf->Size >= 1)
  {
   x_serial = NewXSerial(buf->Buf, buf->Size);
  }
  FreeBuf(buf);

  n = NewName(GetParamUniStr(o, "CN"), GetParamUniStr(o, "O"), GetParamUniStr(o, "OU"),
   GetParamUniStr(o, "C"), GetParamUniStr(o, "ST"), GetParamUniStr(o, "L"));

  days = GetParamInt(o, "EXPIRES");
  if (days == 0)
  {
   days = 3650;
  }

  RsaGen(&pri, &pub, 1024);

  if (root_x == ((void*)0))
  {
   x = NewRootX(pub, pri, n, days, x_serial);
  }
  else
  {
   x = NewX(pub, root_k, root_x, n, days, x_serial);
  }

  FreeXSerial(x_serial);
  FreeName(n);

  if (x == ((void*)0))
  {
   ret = ERR_INTERNAL_ERROR;
   c->Write(c, _UU("CMD_MakeCert_ERROR_GEN_FAILED"));
  }
  else
  {
   if (XToFileW(x, GetParamUniStr(o, "SAVECERT"), 1) == 0)
   {
    c->Write(c, _UU("CMD_SAVECERT_FAILED"));
   }
   else if (KToFileW(pri, GetParamUniStr(o, "SAVEKEY"), 1, ((void*)0)) == 0)
   {
    c->Write(c, _UU("CMD_SAVEKEY_FAILED"));
   }
  }
 }

 if (ret != ERR_NO_ERROR)
 {

  CmdPrintError(c, ret);
 }


 FreeParamValueList(o);

 FreeX(root_x);
 FreeK(root_k);

 FreeX(x);
 FreeK(pri);
 FreeK(pub);

 return ret;
}
