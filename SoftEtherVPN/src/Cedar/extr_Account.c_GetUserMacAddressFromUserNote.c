
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int macstr_a ;
typedef int macstr2 ;
struct TYPE_4__ {int NumTokens; int ** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
typedef int UCHAR ;


 size_t INFINITE ;
 int MAX_SIZE ;
 int StrToMac (int *,char*) ;
 int USER_MAC_STR_PREFIX ;
 int UniFreeToken (TYPE_1__*) ;
 int UniIsEmptyStr (int *) ;
 TYPE_1__* UniParseToken (int *,char*) ;
 size_t UniSearchStrEx (int *,int ,int ,int) ;
 int UniStrCpy (int *,int,int *) ;
 size_t UniStrLen (int ) ;
 int UniToStr (char*,int,int *) ;
 int UniTrim (int *) ;
 int Zero (int *,int) ;

bool GetUserMacAddressFromUserNote(UCHAR *mac, wchar_t *note)
{
 bool ret = 0;
 UINT i;

 Zero(mac, 6);
 if (mac == ((void*)0) || note == ((void*)0))
 {
  return 0;
 }

 i = UniSearchStrEx(note, USER_MAC_STR_PREFIX, 0, 0);
 if (i != INFINITE)
 {
  wchar_t *macstr_start = &note[i + UniStrLen(USER_MAC_STR_PREFIX)];
  wchar_t macstr2[MAX_SIZE];
  UNI_TOKEN_LIST *tokens;

  UniStrCpy(macstr2, sizeof(macstr2), macstr_start);

  UniTrim(macstr2);

  tokens = UniParseToken(macstr2, L" ,/()[].");
  if (tokens != ((void*)0))
  {
   if (tokens->NumTokens >= 1)
   {
    wchar_t *macstr = tokens->Token[0];

    if (UniIsEmptyStr(macstr) == 0)
    {
     char macstr_a[MAX_SIZE];

     UniToStr(macstr_a, sizeof(macstr_a), macstr);

     ret = StrToMac(mac, macstr_a);
    }
   }

   UniFreeToken(tokens);
  }
 }

 return ret;
}
