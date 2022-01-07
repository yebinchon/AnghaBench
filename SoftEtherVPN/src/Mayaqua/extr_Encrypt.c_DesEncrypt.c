
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int KeySchedule; } ;
typedef int DES_cblock ;
typedef TYPE_1__ DES_KEY_VALUE ;


 int Copy (int *,void*,int) ;
 int DES_IV_SIZE ;
 int DES_cbc_encrypt (void*,void*,scalar_t__,int ,int *,int) ;

void DesEncrypt(void *dest, void *src, UINT size, DES_KEY_VALUE *k, void *ivec)
{
 UCHAR ivec_copy[DES_IV_SIZE];

 if (dest == ((void*)0) || src == ((void*)0) || size == 0 || k == ((void*)0) || ivec == ((void*)0))
 {
  return;
 }

 Copy(ivec_copy, ivec, DES_IV_SIZE);

 DES_cbc_encrypt(src, dest, size,
  k->KeySchedule,
  (DES_cblock *)ivec_copy,
  1);
}
