
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int memmap_t ;


 int argBuf ;
 int argBufLen ;
 int callBootloaderNewProcess_2x (int,int ,int ) ;
 int callBootloaderRunTitleCustom_2x (int ,int ,int ,int ,int ,int *) ;
 int callBootloaderRunTitle_2x (int ,int ,int ,int ,int ) ;
 int callBootloader_2x (int ,int ,int ) ;
 int fileHandle ;
 scalar_t__ memMapBuf ;
 int targetMediatype ;
 int targetProcess ;
 int targetTid ;
 scalar_t__ useMemMap ;

__attribute__((used)) static void bootloaderJump(void)
{
 if (targetProcess == -1)
  callBootloader_2x(fileHandle, argBuf, argBufLen);
 else if (targetProcess == -2)
 {
  if (useMemMap)
   callBootloaderRunTitleCustom_2x(targetMediatype, argBuf, argBufLen, (u32)targetTid, (u32)(targetTid>>32), (memmap_t*)memMapBuf);
  else
   callBootloaderRunTitle_2x(targetMediatype, argBuf, argBufLen, (u32)targetTid, (u32)(targetTid>>32));
 }
 else
  callBootloaderNewProcess_2x(targetProcess, argBuf, argBufLen);
}
