
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARAMFetch (scalar_t__,char*,int) ;
 int ARAM_WRITE ;
 scalar_t__ AR_GetDMAStatus () ;
 int AR_StartDMA (int ,int,int,int) ;
 int DCFlushRange (scalar_t__,int) ;
 scalar_t__ aramfix ;
 int memcpy (scalar_t__,char*,int) ;

void ARAMPut(char *src, char *dst, int len)
{
  u32 misalignaddress;
  u32 misalignedbytes;
  u32 misalignedbytestodo;

  int i, block;
  int offset = 0;


  if ((u32) dst & 0x1f)
  {

    misalignaddress = ((u32) dst & ~0x1f);
    misalignedbytestodo = 32 - ((u32) dst & 0x1f);
    misalignedbytes = ((u32) dst & 0x1f);
    ARAMFetch(aramfix, (char *) misalignaddress, 32);


    memcpy(aramfix + misalignedbytes, src, misalignedbytestodo);


    DCFlushRange(aramfix, 32);
    AR_StartDMA(ARAM_WRITE, (u32) aramfix, (u32) dst & ~0x1f, 32);
    while (AR_GetDMAStatus());


    src += misalignedbytestodo;
    len -= misalignedbytestodo;
    dst = (char *) (((u32) dst & ~0x1f) + 32);
  }


  block = (len >> 11);
  for (i = 0; i < block; i++)
  {
    memcpy(aramfix, src + offset, 2048);
    DCFlushRange(aramfix, 2048);
    AR_StartDMA(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, 2048);
    while (AR_GetDMAStatus());
    offset += 2048;
  }


  len &= 0x7ff;
  if (len)
  {
    block = len & 0x1f;
    memcpy(aramfix, src + offset, len & ~0x1f);
    DCFlushRange(aramfix, len & ~0x1f);
    AR_StartDMA(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, len & ~0x1f);
    while (AR_GetDMAStatus());

    if (block)
    {
      offset += len & ~0x1f;
      misalignedbytes = len & 0x1f;


      ARAMFetch(aramfix, dst + offset, 32);
      memcpy(aramfix, src + offset, misalignedbytes);
      DCFlushRange(aramfix, 32);
      AR_StartDMA(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, 32);
      while (AR_GetDMAStatus());
    }
  }
}
