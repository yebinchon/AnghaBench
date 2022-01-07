
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_free (int *) ;
 int * ASN1_BIT_STRING_new () ;
 int BitStringSetBit (int *,int) ;
 int NID_key_usage ;
 int * X509V3_EXT_i2d (int ,int ,int *) ;

X509_EXTENSION *NewBasicKeyUsageForX509()
{
 X509_EXTENSION *ret = ((void*)0);
 ASN1_BIT_STRING *str;

 str = ASN1_BIT_STRING_new();
 if (str != ((void*)0))
 {
  BitStringSetBit(str, 0);
  BitStringSetBit(str, 1);
  BitStringSetBit(str, 2);
  BitStringSetBit(str, 3);

  BitStringSetBit(str, 5);
  BitStringSetBit(str, 6);

  ret = X509V3_EXT_i2d(NID_key_usage, 0, str);

  ASN1_BIT_STRING_free(str);
 }

 return ret;
}
