
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
struct TYPE_3__ {int status; int iFile; int fileName; } ;


 int FMV_LOOPED ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileRead (int ,int *,int ) ;
 int RoQ_init () ;
 int Sys_BeginStreamedFile (int ,int) ;
 int Sys_EndStreamedFile (int ) ;
 int Sys_StreamedRead (int ,int,int,int ) ;
 TYPE_2__ cin ;
 TYPE_1__* cinTable ;
 size_t currentHandle ;
 int qtrue ;

__attribute__((used)) static void RoQReset() {

 if (currentHandle < 0) return;

 Sys_EndStreamedFile(cinTable[currentHandle].iFile);
 FS_FCloseFile( cinTable[currentHandle].iFile );
 FS_FOpenFileRead (cinTable[currentHandle].fileName, &cinTable[currentHandle].iFile, qtrue);

 Sys_BeginStreamedFile( cinTable[currentHandle].iFile, 0x10000 );
 Sys_StreamedRead (cin.file, 16, 1, cinTable[currentHandle].iFile);
 RoQ_init();
 cinTable[currentHandle].status = FMV_LOOPED;
}
