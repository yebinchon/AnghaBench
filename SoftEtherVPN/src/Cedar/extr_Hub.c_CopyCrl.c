
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int data; } ;
struct TYPE_6__ {int DigestSHA1; int DigestMD5; int Name; TYPE_3__* Serial; } ;
typedef TYPE_1__ CRL ;


 int Copy (int ,int ,int ) ;
 int CopyName (int ) ;
 int MD5_SIZE ;
 TYPE_3__* NewXSerial (int ,int ) ;
 int SHA1_SIZE ;
 TYPE_1__* ZeroMalloc (int) ;

CRL *CopyCrl(CRL *crl)
{
 CRL *ret;

 if (crl == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(CRL));

 if (crl->Serial != ((void*)0))
 {
  ret->Serial = NewXSerial(crl->Serial->data, crl->Serial->size);
 }

 ret->Name = CopyName(crl->Name);

 Copy(ret->DigestMD5, crl->DigestMD5, MD5_SIZE);
 Copy(ret->DigestSHA1, crl->DigestSHA1, SHA1_SIZE);

 return ret;
}
