
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MappedMemoryWriteByte (int,int) ;

__attribute__((used)) static void DeleteSave(u32 addr, u32 blockoffset, u32 blocksize)
{
    MappedMemoryWriteByte(addr + (blockoffset * blocksize * 2) + 0x1, 0x00);
}
