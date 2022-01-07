
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int FOLDER ;
typedef int BUF ;


 int B64_Decode (void*,char*,int) ;
 scalar_t__ CalcUtf8ToUni (char*,int) ;
 int CfgAddBool (int *,char*,int) ;
 int CfgAddByte (int *,char*,void*,int) ;
 int CfgAddInt (int *,char*,scalar_t__) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddUniStr (int *,char*,char*) ;
 int * CfgCreateFolder (int *,char*) ;
 char* CfgReadNextLine (int *) ;
 char* CfgUnescape (char*) ;
 int Free (char*) ;
 int FreeToken (TYPE_1__*) ;
 void* Malloc (int) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int StrCmpi (char*,char*) ;
 int StrLen (char*) ;
 char* TAG_BOOL ;
 char* TAG_BYTE ;
 char* TAG_DECLARE ;
 char* TAG_INT ;
 char* TAG_INT64 ;
 char* TAG_STRING ;
 char* TAG_TRUE ;
 scalar_t__ ToInt (char*) ;
 int ToInt64 (char*) ;
 int Utf8ToUni (char*,scalar_t__,char*,int) ;

bool CfgReadNextTextBUF(BUF *b, FOLDER *current)
{
 char *buf;
 TOKEN_LIST *token;
 char *name;
 char *string;
 char *data;
 bool ret;
 FOLDER *f;


 if (b == ((void*)0) || current == ((void*)0))
 {
  return 0;
 }

 ret = 1;


 buf = CfgReadNextLine(b);
 if (buf == ((void*)0))
 {
  return 0;
 }


 token = ParseToken(buf, "\t ");
 if (token == ((void*)0))
 {
  Free(buf);
  return 0;
 }

 if (token->NumTokens >= 1)
 {
  if (!StrCmpi(token->Token[0], TAG_DECLARE))
  {
   if (token->NumTokens >= 2)
   {

    name = CfgUnescape(token->Token[1]);


    f = CfgCreateFolder(current, name);


    while (1)
    {
     if (CfgReadNextTextBUF(b, f) == 0)
     {
      break;
     }
    }

    Free(name);
   }
  }
  if (!StrCmpi(token->Token[0], "}"))
  {

   ret = 0;
  }
  if (token->NumTokens >= 3)
  {
   name = CfgUnescape(token->Token[1]);
   data = token->Token[2];

   if (!StrCmpi(token->Token[0], TAG_STRING))
   {

    wchar_t *uni;
    UINT uni_size;
    string = CfgUnescape(data);
    uni_size = CalcUtf8ToUni(string, StrLen(string));
    if (uni_size != 0)
    {
     uni = Malloc(uni_size);
     Utf8ToUni(uni, uni_size, string, StrLen(string));
     CfgAddUniStr(current, name, uni);
     Free(uni);
    }
    Free(string);
   }
   if (!StrCmpi(token->Token[0], TAG_INT))
   {

    CfgAddInt(current, name, ToInt(data));
   }
   if (!StrCmpi(token->Token[0], TAG_INT64))
   {

    CfgAddInt64(current, name, ToInt64(data));
   }
   if (!StrCmpi(token->Token[0], TAG_BOOL))
   {

    bool b = 0;
    if (!StrCmpi(data, TAG_TRUE))
    {
     b = 1;
    }
    else if (ToInt(data) != 0)
    {
     b = 1;
    }
    CfgAddBool(current, name, b);
   }
   if (!StrCmpi(token->Token[0], TAG_BYTE))
   {

    char *unescaped_b64 = CfgUnescape(data);
    void *tmp = Malloc(StrLen(unescaped_b64) * 4 + 64);
    int size = B64_Decode(tmp, unescaped_b64, StrLen(unescaped_b64));
    CfgAddByte(current, name, tmp, size);
    Free(tmp);
    Free(unescaped_b64);
   }

   Free(name);
  }
 }


 FreeToken(token);

 Free(buf);

 return ret;
}
