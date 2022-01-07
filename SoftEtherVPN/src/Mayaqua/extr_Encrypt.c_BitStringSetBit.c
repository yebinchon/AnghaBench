
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_set_bit (int *,int,int) ;

void BitStringSetBit(ASN1_BIT_STRING *str, int bit)
{

 if (str == ((void*)0))
 {
  return;
 }

 ASN1_BIT_STRING_set_bit(str, bit, 1);
}
