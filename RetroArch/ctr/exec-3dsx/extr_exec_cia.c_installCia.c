
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int Result ;
typedef int Handle ;


 int AM_CancelCIAInstall (int ) ;
 int AM_FinishCiaInstall (int ) ;
 int AM_StartCiaInstall (int ,int *) ;
 int FILE_CHUNK_SIZE ;
 int FSFILE_GetSize (int ,scalar_t__*) ;
 int FSFILE_Read (int ,scalar_t__*,scalar_t__,int *,scalar_t__) ;
 int FSFILE_Write (int ,scalar_t__*,scalar_t__,int *,scalar_t__,int ) ;
 int MEDIATYPE_SD ;
 scalar_t__ RD_ALREADY_EXISTS ;
 scalar_t__ R_DESCRIPTION (int ) ;
 scalar_t__ R_FAILED (int ) ;

__attribute__((used)) static int installCia(Handle ciaFile){
 Result failed;
 Handle outputHandle;
 u64 fileSize;
 u64 fileOffset = 0;
 u32 bytesRead;
 u32 bytesWritten;
 u8 transferBuffer[FILE_CHUNK_SIZE];

 failed = AM_StartCiaInstall(MEDIATYPE_SD, &outputHandle);
 if(R_FAILED(failed))
  return -1;

 failed = FSFILE_GetSize(ciaFile, &fileSize);
 if(R_FAILED(failed))
  return -1;

 while(fileOffset < fileSize){
  u64 bytesRemaining = fileSize - fileOffset;
  failed = FSFILE_Read(ciaFile, &bytesRead, fileOffset, transferBuffer, bytesRemaining < FILE_CHUNK_SIZE ? bytesRemaining : FILE_CHUNK_SIZE);
  if(R_FAILED(failed)){
   AM_CancelCIAInstall(outputHandle);
   return -1;
  }

  failed = FSFILE_Write(outputHandle, &bytesWritten, fileOffset, transferBuffer, bytesRead, 0);
  if(R_FAILED(failed)){
   AM_CancelCIAInstall(outputHandle);
   if(R_DESCRIPTION(failed) == RD_ALREADY_EXISTS)
    return 1;
   return -1;
  }

  if(bytesWritten != bytesRead){
   AM_CancelCIAInstall(outputHandle);
   return -1;
  }

  fileOffset += bytesWritten;
 }

 failed = AM_FinishCiaInstall(outputHandle);
 if(R_FAILED(failed))
  return -1;

 return 1;
}
