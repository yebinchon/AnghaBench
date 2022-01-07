
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int txt ;
typedef int tmp ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_OBJECT ;


 size_t CalcUtf8ToUni (int*,int ) ;
 int * CopyUniStr (int *) ;
 int EndianUnicode (int *) ;
 int * OBJ_nid2obj (int) ;
 int StrLen (int*) ;
 int StrToUni (int *,int,char*) ;
 int UniStrLen (int *) ;
 int Utf8ToUni (int *,size_t,int*,int ) ;
 scalar_t__ V_ASN1_BMPSTRING ;
 scalar_t__ V_ASN1_T61STRING ;
 scalar_t__ V_ASN1_UTF8STRING ;
 TYPE_1__* X509_NAME_ENTRY_get_data (int ) ;
 int X509_NAME_get_entry (void*,int) ;
 int X509_NAME_get_index_by_OBJ (void*,int *,int) ;
 scalar_t__ X509_NAME_get_text_by_NID (void*,int,char*,int) ;
 int Zero (int*,int) ;
 int * ZeroMalloc (size_t) ;

wchar_t *GetUniStrFromX509Name(void *xn, int nid)
{
 UCHAR txt[1024];
 bool b = 0;
 UINT i, size;
 int index;
 bool unicode = 0;
 bool is_utf_8 = 0;
 ASN1_OBJECT *obj;
 ASN1_STRING *data;

 if (xn == ((void*)0) || nid == 0)
 {
  return ((void*)0);
 }

 Zero(txt, sizeof(txt));
 if (X509_NAME_get_text_by_NID(xn, nid, (char *)txt, sizeof(txt) - 2) <= 0)
 {
  return ((void*)0);
 }

 obj = OBJ_nid2obj(nid);
 if (obj == ((void*)0))
 {
  return ((void*)0);
 }
 index = X509_NAME_get_index_by_OBJ(xn, obj, -1);
 if (index < 0)
 {
  return ((void*)0);
 }
 data = X509_NAME_ENTRY_get_data(X509_NAME_get_entry(xn, index));
 if (data == ((void*)0))
 {
  return ((void*)0);
 }
 if (data->type == V_ASN1_BMPSTRING)
 {
  unicode = 1;
 }
 if (data->type == V_ASN1_UTF8STRING || data->type == V_ASN1_T61STRING)
 {
  is_utf_8 = 1;
 }

 size = UniStrLen((wchar_t *)txt) * 4 + 8;
 for (i = 0;i < size;i++)
 {
  if (txt[i] >= 0x80)
  {
   unicode = 1;
   break;
  }
 }

 if (is_utf_8)
 {
  wchar_t *ret;
  UINT ret_size;

  ret_size = CalcUtf8ToUni(txt, StrLen(txt));
  ret = ZeroMalloc(ret_size + 8);
  Utf8ToUni(ret, ret_size, txt, StrLen(txt));

  return ret;
 }
 else if (unicode == 0)
 {
  wchar_t tmp[1024];
  StrToUni(tmp, sizeof(tmp), (char *)txt);
  return CopyUniStr(tmp);
 }
 else
 {
  EndianUnicode((wchar_t *)txt);
  return CopyUniStr((wchar_t *)txt);
 }
}
