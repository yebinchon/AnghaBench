
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * Cs0WriteLong; int * Cs0WriteWord; int * Cs0WriteByte; int * Cs0ReadLong; int * Cs0ReadWord; int * Cs0ReadByte; } ;


 int BiosRomMemoryReadByte ;
 int BiosRomMemoryReadLong ;
 int BiosRomMemoryReadWord ;
 int BiosRomMemoryWriteByte ;
 int BiosRomMemoryWriteLong ;
 int BiosRomMemoryWriteWord ;
 int BupRamMemoryReadByte ;
 int BupRamMemoryReadLong ;
 int BupRamMemoryReadWord ;
 int BupRamMemoryWriteByte ;
 int BupRamMemoryWriteLong ;
 int BupRamMemoryWriteWord ;
 TYPE_1__* CartridgeArea ;
 int Cs1ReadByte ;
 int Cs1ReadLong ;
 int Cs1ReadWord ;
 int Cs1WriteByte ;
 int Cs1WriteLong ;
 int Cs1WriteWord ;
 int Cs2ReadByte ;
 int Cs2ReadLong ;
 int Cs2ReadWord ;
 int Cs2WriteByte ;
 int Cs2WriteLong ;
 int Cs2WriteWord ;
 int FillMemoryArea (int,int,int *,int *,int *,int *,int *,int *) ;
 int HighWramMemoryReadByte ;
 int HighWramMemoryReadLong ;
 int HighWramMemoryReadWord ;
 int HighWramMemoryWriteByte ;
 int HighWramMemoryWriteLong ;
 int HighWramMemoryWriteWord ;
 int LowWramMemoryReadByte ;
 int LowWramMemoryReadLong ;
 int LowWramMemoryReadWord ;
 int LowWramMemoryWriteByte ;
 int LowWramMemoryWriteLong ;
 int LowWramMemoryWriteWord ;
 int MSH2InputCaptureWriteWord ;
 int SSH2InputCaptureWriteWord ;
 int ScuReadByte ;
 int ScuReadLong ;
 int ScuReadWord ;
 int ScuWriteByte ;
 int ScuWriteLong ;
 int ScuWriteWord ;
 int SmpcReadByte ;
 int SmpcReadLong ;
 int SmpcReadWord ;
 int SmpcWriteByte ;
 int SmpcWriteLong ;
 int SmpcWriteWord ;
 int SoundRamReadByte ;
 int SoundRamReadLong ;
 int SoundRamReadWord ;
 int SoundRamWriteByte ;
 int SoundRamWriteLong ;
 int SoundRamWriteWord ;
 int UnhandledMemoryReadByte ;
 int UnhandledMemoryReadLong ;
 int UnhandledMemoryReadWord ;
 int UnhandledMemoryWriteByte ;
 int UnhandledMemoryWriteLong ;
 int UnhandledMemoryWriteWord ;
 int Vdp1FrameBufferReadByte ;
 int Vdp1FrameBufferReadLong ;
 int Vdp1FrameBufferReadWord ;
 int Vdp1FrameBufferWriteByte ;
 int Vdp1FrameBufferWriteLong ;
 int Vdp1FrameBufferWriteWord ;
 int Vdp1RamReadByte ;
 int Vdp1RamReadLong ;
 int Vdp1RamReadWord ;
 int Vdp1RamWriteByte ;
 int Vdp1RamWriteLong ;
 int Vdp1RamWriteWord ;
 int Vdp1ReadByte ;
 int Vdp1ReadLong ;
 int Vdp1ReadWord ;
 int Vdp1WriteByte ;
 int Vdp1WriteLong ;
 int Vdp1WriteWord ;
 int Vdp2ColorRamReadByte ;
 int Vdp2ColorRamReadLong ;
 int Vdp2ColorRamReadWord ;
 int Vdp2ColorRamWriteByte ;
 int Vdp2ColorRamWriteLong ;
 int Vdp2ColorRamWriteWord ;
 int Vdp2RamReadByte ;
 int Vdp2RamReadLong ;
 int Vdp2RamReadWord ;
 int Vdp2RamWriteByte ;
 int Vdp2RamWriteLong ;
 int Vdp2RamWriteWord ;
 int Vdp2ReadByte ;
 int Vdp2ReadLong ;
 int Vdp2ReadWord ;
 int Vdp2WriteByte ;
 int Vdp2WriteLong ;
 int Vdp2WriteWord ;
 int scsp_r_b ;
 int scsp_r_d ;
 int scsp_r_w ;
 int scsp_w_b ;
 int scsp_w_d ;
 int scsp_w_w ;

void MappedMemoryInit()
{

   FillMemoryArea(0x000, 0xFFF, &UnhandledMemoryReadByte,
                                &UnhandledMemoryReadWord,
                                &UnhandledMemoryReadLong,
                                &UnhandledMemoryWriteByte,
                                &UnhandledMemoryWriteWord,
                                &UnhandledMemoryWriteLong);


   FillMemoryArea(0x000, 0x00F, &BiosRomMemoryReadByte,
                                &BiosRomMemoryReadWord,
                                &BiosRomMemoryReadLong,
                                &BiosRomMemoryWriteByte,
                                &BiosRomMemoryWriteWord,
                                &BiosRomMemoryWriteLong);
   FillMemoryArea(0x010, 0x017, &SmpcReadByte,
                                &SmpcReadWord,
                                &SmpcReadLong,
                                &SmpcWriteByte,
                                &SmpcWriteWord,
                                &SmpcWriteLong);
   FillMemoryArea(0x018, 0x01F, &BupRamMemoryReadByte,
                                &BupRamMemoryReadWord,
                                &BupRamMemoryReadLong,
                                &BupRamMemoryWriteByte,
                                &BupRamMemoryWriteWord,
                                &BupRamMemoryWriteLong);
   FillMemoryArea(0x020, 0x02F, &LowWramMemoryReadByte,
                                &LowWramMemoryReadWord,
                                &LowWramMemoryReadLong,
                                &LowWramMemoryWriteByte,
                                &LowWramMemoryWriteWord,
                                &LowWramMemoryWriteLong);
   FillMemoryArea(0x100, 0x17F, &UnhandledMemoryReadByte,
                                &UnhandledMemoryReadWord,
                                &UnhandledMemoryReadLong,
                                &UnhandledMemoryWriteByte,
                                &SSH2InputCaptureWriteWord,
                                &UnhandledMemoryWriteLong);
   FillMemoryArea(0x180, 0x1FF, &UnhandledMemoryReadByte,
                                &UnhandledMemoryReadWord,
                                &UnhandledMemoryReadLong,
                                &UnhandledMemoryWriteByte,
                                &MSH2InputCaptureWriteWord,
                                &UnhandledMemoryWriteLong);
   FillMemoryArea(0x200, 0x3FF, CartridgeArea->Cs0ReadByte,
                                CartridgeArea->Cs0ReadWord,
                                CartridgeArea->Cs0ReadLong,
                                CartridgeArea->Cs0WriteByte,
                                CartridgeArea->Cs0WriteWord,
                                CartridgeArea->Cs0WriteLong);
   FillMemoryArea(0x400, 0x4FF, &Cs1ReadByte,
                                &Cs1ReadWord,
                                &Cs1ReadLong,
                                &Cs1WriteByte,
                                &Cs1WriteWord,
                                &Cs1WriteLong);
   FillMemoryArea(0x580, 0x58F, &Cs2ReadByte,
                                &Cs2ReadWord,
                                &Cs2ReadLong,
                                &Cs2WriteByte,
                                &Cs2WriteWord,
                                &Cs2WriteLong);
   FillMemoryArea(0x5A0, 0x5AF, &SoundRamReadByte,
                                &SoundRamReadWord,
                                &SoundRamReadLong,
                                &SoundRamWriteByte,
                                &SoundRamWriteWord,
                                &SoundRamWriteLong);
   FillMemoryArea(0x5B0, 0x5BF, &scsp_r_b,
                                &scsp_r_w,
                                &scsp_r_d,
                                &scsp_w_b,
                                &scsp_w_w,
                                &scsp_w_d);
   FillMemoryArea(0x5C0, 0x5C7, &Vdp1RamReadByte,
                                &Vdp1RamReadWord,
                                &Vdp1RamReadLong,
                                &Vdp1RamWriteByte,
                                &Vdp1RamWriteWord,
                                &Vdp1RamWriteLong);
   FillMemoryArea(0x5C8, 0x5CF, &Vdp1FrameBufferReadByte,
                                &Vdp1FrameBufferReadWord,
                                &Vdp1FrameBufferReadLong,
                                &Vdp1FrameBufferWriteByte,
                                &Vdp1FrameBufferWriteWord,
                                &Vdp1FrameBufferWriteLong);
   FillMemoryArea(0x5D0, 0x5D7, &Vdp1ReadByte,
                                &Vdp1ReadWord,
                                &Vdp1ReadLong,
                                &Vdp1WriteByte,
                                &Vdp1WriteWord,
                                &Vdp1WriteLong);
   FillMemoryArea(0x5E0, 0x5EF, &Vdp2RamReadByte,
                                &Vdp2RamReadWord,
                                &Vdp2RamReadLong,
                                &Vdp2RamWriteByte,
                                &Vdp2RamWriteWord,
                                &Vdp2RamWriteLong);
   FillMemoryArea(0x5F0, 0x5F7, &Vdp2ColorRamReadByte,
                                &Vdp2ColorRamReadWord,
                                &Vdp2ColorRamReadLong,
                                &Vdp2ColorRamWriteByte,
                                &Vdp2ColorRamWriteWord,
                                &Vdp2ColorRamWriteLong);
   FillMemoryArea(0x5F8, 0x5FB, &Vdp2ReadByte,
                                &Vdp2ReadWord,
                                &Vdp2ReadLong,
                                &Vdp2WriteByte,
                                &Vdp2WriteWord,
                                &Vdp2WriteLong);
   FillMemoryArea(0x5FE, 0x5FE, &ScuReadByte,
                                &ScuReadWord,
                                &ScuReadLong,
                                &ScuWriteByte,
                                &ScuWriteWord,
                                &ScuWriteLong);
   FillMemoryArea(0x600, 0x7FF, &HighWramMemoryReadByte,
                                &HighWramMemoryReadWord,
                                &HighWramMemoryReadLong,
                                &HighWramMemoryWriteByte,
                                &HighWramMemoryWriteWord,
                                &HighWramMemoryWriteLong);
}
