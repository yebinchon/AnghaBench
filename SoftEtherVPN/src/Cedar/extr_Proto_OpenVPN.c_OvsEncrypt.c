
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int IsAeadCipher; int IvSize; } ;
struct TYPE_8__ {int Size; } ;
typedef TYPE_1__ MD ;
typedef TYPE_2__ CIPHER ;


 scalar_t__ CipherProcess (TYPE_2__*,int *,int *,int *,scalar_t__) ;
 scalar_t__ CipherProcessAead (TYPE_2__*,int *,int *,int,int *,int *,scalar_t__,int *,scalar_t__) ;
 int Copy (int *,int *,int) ;
 int Debug (char*) ;
 scalar_t__ MdProcess (TYPE_1__*,int *,int *,scalar_t__) ;

UINT OvsEncrypt(CIPHER *cipher, MD *md, UCHAR *iv, UCHAR *tag, UCHAR *dest, UCHAR *src, UINT src_size, UCHAR *aad, UINT aad_size)
{

 if (cipher == ((void*)0) || (cipher->IsAeadCipher == 0 && md == ((void*)0)))
 {
  return 0;
 }

 if (cipher->IsAeadCipher)
 {

  UINT dest_size = CipherProcessAead(cipher, iv, tag, 16, dest, src, src_size, aad, aad_size);
  if (dest_size == 0)
  {
   Debug("OvsEncrypt(): CipherProcessAead() failed!\n");
   return 0;
  }

  return dest_size;
 }
 else
 {

  UINT ret;
  UINT dest_size = CipherProcess(cipher, iv, dest + md->Size + cipher->IvSize, src, src_size);
  if (dest_size == 0)
  {
   Debug("OvsEncrypt(): CipherProcess() failed!\n");
   return 0;
  }


  Copy(dest + md->Size, iv, cipher->IvSize);
  dest_size += cipher->IvSize;


  ret = MdProcess(md, dest, dest + md->Size, dest_size);
  if (ret == 0)
  {
   Debug("OvsEncrypt(): MdProcess() failed!\n");
   return 0;
  }

  return dest_size + ret;
 }
}
