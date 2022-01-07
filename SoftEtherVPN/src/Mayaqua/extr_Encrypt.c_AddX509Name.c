
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int X509_NAME ;
typedef int UINT ;
typedef scalar_t__ BYTE ;


 int CalcUniToUtf8 (int *) ;
 int Free (scalar_t__*) ;
 int Lock (int ) ;
 int MBSTRING_ASC ;
 int MBSTRING_UTF8 ;
 scalar_t__ StrLen (scalar_t__*) ;
 scalar_t__ UniStrLen (int *) ;
 int UniToUtf8 (scalar_t__*,int,int *) ;
 int Unlock (int ) ;
 int X509_NAME_add_entry_by_NID (int *,int,int,scalar_t__*,int,int,int ) ;
 scalar_t__* ZeroMalloc (int) ;
 int openssl_lock ;

bool AddX509Name(void *xn, int nid, wchar_t *str)
{
 X509_NAME *x509_name;
 UINT utf8_size;
 BYTE *utf8;
 int encoding_type = MBSTRING_ASC;

 if (xn == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }


 utf8_size = CalcUniToUtf8(str);
 if (utf8_size == 0)
 {
  return 0;
 }
 utf8 = ZeroMalloc(utf8_size + 1);
 UniToUtf8(utf8, utf8_size, str);
 utf8[utf8_size] = 0;

 if (StrLen(utf8) != UniStrLen(str))
 {
  encoding_type = MBSTRING_UTF8;
 }


 x509_name = (X509_NAME *)xn;
 Lock(openssl_lock);
 {
  X509_NAME_add_entry_by_NID(x509_name, nid, encoding_type, utf8, utf8_size, -1, 0);
 }
 Unlock(openssl_lock);
 Free(utf8);

 return 1;
}
