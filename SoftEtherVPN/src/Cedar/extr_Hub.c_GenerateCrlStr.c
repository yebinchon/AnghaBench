
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef int uni ;
typedef int tmp ;
typedef int str ;
typedef int name ;
struct TYPE_5__ {int DigestSHA1; int DigestMD5; TYPE_1__* Serial; int * Name; } ;
struct TYPE_4__ {int size; int data; } ;
typedef TYPE_2__ CRL ;


 int BinToStrEx (char*,int,int ,int ) ;
 char* CopyUniStr (char*) ;
 int GetAllNameFromName (char*,int,int *) ;
 int IsZero (int ,int ) ;
 int MAX_SIZE ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int StrToUni (char*,int,char*) ;
 scalar_t__ UniEndWith (char*,char*) ;
 int UniStrCat (char*,int,char*) ;
 int UniStrCpy (char*,int,char*) ;
 int UniStrLen (char*) ;

wchar_t *GenerateCrlStr(CRL *crl)
{
 wchar_t tmp[2048];

 if (crl == ((void*)0))
 {
  return ((void*)0);
 }

 UniStrCpy(tmp, sizeof(tmp), L"");

 if (crl->Name != ((void*)0))
 {

  wchar_t name[MAX_SIZE];

  UniStrCat(tmp, sizeof(tmp), L"Subject=\"");

  GetAllNameFromName(name, sizeof(name), crl->Name);
  UniStrCat(tmp, sizeof(tmp), name);
  UniStrCat(tmp, sizeof(tmp), L"\", ");
 }

 if (crl->Serial != ((void*)0))
 {

  char str[128];
  wchar_t uni[128];

  BinToStrEx(str, sizeof(str), crl->Serial->data, crl->Serial->size);
  StrToUni(uni, sizeof(uni), str);
  UniStrCat(tmp, sizeof(tmp), L"Serial=\"");
  UniStrCat(tmp, sizeof(tmp), uni);
  UniStrCat(tmp, sizeof(tmp), L"\", ");
 }

 if (IsZero(crl->DigestMD5, MD5_SIZE) == 0)
 {

  char str[128];
  wchar_t uni[128];

  BinToStrEx(str, sizeof(str), crl->DigestMD5, MD5_SIZE);
  StrToUni(uni, sizeof(uni), str);
  UniStrCat(tmp, sizeof(tmp), L"MD5=\"");
  UniStrCat(tmp, sizeof(tmp), uni);
  UniStrCat(tmp, sizeof(tmp), L"\", ");
 }

 if (IsZero(crl->DigestSHA1, SHA1_SIZE) == 0)
 {

  char str[128];
  wchar_t uni[128];

  BinToStrEx(str, sizeof(str), crl->DigestSHA1, SHA1_SIZE);
  StrToUni(uni, sizeof(uni), str);
  UniStrCat(tmp, sizeof(tmp), L"SHA1=\"");
  UniStrCat(tmp, sizeof(tmp), uni);
  UniStrCat(tmp, sizeof(tmp), L"\", ");
 }

 if (UniEndWith(tmp, L", "))
 {
  tmp[UniStrLen(tmp) - 2] = 0;
 }

 return CopyUniStr(tmp);
}
