
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 void* BSWAP16 (int const) ;
 int Cs2RapidCopyT2 (int *,int) ;
 void* DMAMemoryPointer (int) ;
 int* DMAMemoryType ;
 int * HighWram ;
 int * LowWram ;
 int M68KWriteNotify (int,int) ;
 int MappedMemoryReadLong (int) ;
 int MappedMemoryReadWord (int) ;
 int MappedMemoryWriteLong (int,int) ;
 int MappedMemoryWriteWord (int,int) ;
 int SH2WriteNotify (int,int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void DoDMA(u32 ReadAddress, unsigned int ReadAdd,
                  u32 WriteAddress, unsigned int WriteAdd,
                  u32 TransferSize)
{
   if (ReadAdd == 0) {
      int constant_source = ((ReadAddress & 0x1FF00000) == 0x00200000)
                         || ((ReadAddress & 0x1E000000) == 0x06000000)
                         || ((ReadAddress & 0x1FF00000) == 0x05A00000)
                         || ((ReadAddress & 0x1DF00000) == 0x05C00000);

      if ((WriteAddress & 0x1FFFFFFF) >= 0x5A00000
            && (WriteAddress & 0x1FFFFFFF) < 0x5FF0000) {



         if (constant_source) {
            u32 counter = 0;
            u32 val;
            if (ReadAddress & 2) {
               val = MappedMemoryReadWord(ReadAddress) << 16
                   | MappedMemoryReadWord(ReadAddress+2);
            } else {
               val = MappedMemoryReadLong(ReadAddress);
            }
            while (counter < TransferSize) {
               MappedMemoryWriteWord(WriteAddress, (u16)(val >> 16));
               WriteAddress += WriteAdd;
               MappedMemoryWriteWord(WriteAddress, (u16)val);
               WriteAddress += WriteAdd;
               counter += 4;
            }
         } else {
            u32 counter = 0;
            while (counter < TransferSize) {
               u32 tmp = MappedMemoryReadLong(ReadAddress);
               MappedMemoryWriteWord(WriteAddress, (u16)(tmp >> 16));
               WriteAddress += WriteAdd;
               MappedMemoryWriteWord(WriteAddress, (u16)tmp);
               WriteAddress += WriteAdd;
               ReadAddress += ReadAdd;
               counter += 4;
            }
         }
      }
      else {

         u32 start = WriteAddress;
         if (constant_source) {
            u32 val = MappedMemoryReadLong(ReadAddress);
            u32 counter = 0;
            while (counter < TransferSize) {
               MappedMemoryWriteLong(WriteAddress, val);
               ReadAddress += ReadAdd;
               WriteAddress += WriteAdd;
               counter += 4;
            }
         } else {
            u32 counter = 0;
            while (counter < TransferSize) {
               MappedMemoryWriteLong(WriteAddress,
                                     MappedMemoryReadLong(ReadAddress));
               ReadAddress += ReadAdd;
               WriteAddress += WriteAdd;
               counter += 4;
            }
         }

         SH2WriteNotify(start, WriteAddress - start);
      }

   }

   else {
      if ((WriteAddress & 0x1FFFFFFF) >= 0x5A00000
          && (WriteAddress & 0x1FFFFFFF) < 0x5FF0000) {

         u32 counter = 0;
         if (ReadAddress & 2) {
            u16 tmp = MappedMemoryReadWord(ReadAddress);
            MappedMemoryWriteWord(WriteAddress, tmp);
            WriteAddress += WriteAdd;
            ReadAddress += 2;
            counter += 2;
         }
         if (TransferSize >= 3)
         {
            while (counter < TransferSize-2) {
               u32 tmp = MappedMemoryReadLong(ReadAddress);
               MappedMemoryWriteWord(WriteAddress, (u16)(tmp >> 16));
               WriteAddress += WriteAdd;
               MappedMemoryWriteWord(WriteAddress, (u16)tmp);
               WriteAddress += WriteAdd;
               ReadAddress += 4;
               counter += 4;
            }
         }
         if (counter < TransferSize) {
            u16 tmp = MappedMemoryReadWord(ReadAddress);
            MappedMemoryWriteWord(WriteAddress, tmp);
            WriteAddress += WriteAdd;
            ReadAddress += 2;
            counter += 2;
         }
      }
      else {
         u32 counter = 0;
         u32 start = WriteAddress;
         while (counter < TransferSize) {
            MappedMemoryWriteLong(WriteAddress, MappedMemoryReadLong(ReadAddress));
            ReadAddress += 4;
            WriteAddress += WriteAdd;
            counter += 4;
         }

         SH2WriteNotify(start, WriteAddress - start);
      }

   }
}
