
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int BlockSize; int IvSize; scalar_t__ IsAeadCipher; } ;
struct TYPE_8__ {int Size; } ;
typedef TYPE_1__ MD ;
typedef TYPE_2__ CIPHER ;


 int CipherProcess (TYPE_2__*,int *,int *,int *,int) ;
 int CipherProcessAead (TYPE_2__*,int *,int *,int,int *,int *,int,int *,int) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (int *,int *,int) ;
 int Debug (char*) ;
 scalar_t__ MdProcess (TYPE_1__*,int *,int *,int) ;
 int OPENVPN_TAG_SIZE ;

UINT OvsDecrypt(CIPHER *cipher, MD *md, UCHAR *iv, UCHAR *dest, UCHAR *src, UINT size)
{

 if (cipher == ((void*)0))
 {
  return 0;
 }

 if (cipher->IsAeadCipher)
 {
  UCHAR *tag = src;

  if (iv == ((void*)0) || size <= OPENVPN_TAG_SIZE)
  {
   return 0;
  }

  src += OPENVPN_TAG_SIZE;
  size -= OPENVPN_TAG_SIZE;


  if (size >= 1 && (cipher->BlockSize == 0 || (size % cipher->BlockSize) == 0))
  {

   UINT ret = CipherProcessAead(cipher, iv, tag, OPENVPN_TAG_SIZE, dest, src, size, iv, sizeof(UINT));
   if (ret == 0)
   {
    Debug("OvsDecrypt(): CipherProcessAead() failed!\n");
   }

   return ret;
  }
 }
 else
 {
  UCHAR *hmac;
  UCHAR hmac_test[128];

  if (md == ((void*)0) || iv == ((void*)0) || size < (md->Size + cipher->IvSize + sizeof(UINT)))
  {
   return 0;
  }


  hmac = src;
  src += md->Size;
  size -= md->Size;

  if (MdProcess(md, hmac_test, src, size) == 0)
  {
   Debug("OvsDecrypt(): MdProcess() failed!\n");
   return 0;
  }

  if (Cmp(hmac_test, hmac, md->Size) != 0)
  {
   Debug("OvsDecrypt(): HMAC verification failed!\n");
   return 0;
  }


  Copy(iv, src, cipher->IvSize);
  src += cipher->IvSize;
  size -= cipher->IvSize;


  if (size >= 1 && (cipher->BlockSize == 0 || (size % cipher->BlockSize) == 0))
  {

   UINT ret = CipherProcess(cipher, iv, dest, src, size);
   if (ret == 0)
   {
    Debug("OvsDecrypt(): CipherProcess() failed!\n");
   }

   return ret;
  }
 }

 return 0;
}
