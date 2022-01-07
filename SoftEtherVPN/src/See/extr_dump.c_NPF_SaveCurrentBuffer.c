
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sf_pkthdr {scalar_t__ caplen; } ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int Status; } ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {scalar_t__ Bhead; scalar_t__ Btail; scalar_t__ BLastByte; scalar_t__ Buffer; scalar_t__ MaxDumpBytes; TYPE_2__ DumpOffset; int ReadEvent; void* DumpLimitReached; int DumpFileObject; } ;
typedef TYPE_1__* POPEN_INSTANCE ;
typedef int NTSTATUS ;


 scalar_t__ CurrBuff ;
 int DbgPrint (char*) ;
 int FALSE ;
 int IF_LOUD (int ) ;
 int * IoAllocateMdl (scalar_t__,scalar_t__,int ,int ,int *) ;
 int IoFreeMdl (int *) ;
 TYPE_3__ IoStatus ;
 int KeSetEvent (int ,int ,int ) ;
 int MmBuildMdlForNonPagedPool (int *) ;
 int NPF_WriteDumpFile (int ,TYPE_2__*,scalar_t__,int *,TYPE_3__*) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 scalar_t__ SizeToDump ;
 scalar_t__ TLastByte ;
 void* TRUE ;
 scalar_t__ Thead ;
 scalar_t__ Ttail ;
 int * lMdl ;

NTSTATUS NPF_SaveCurrentBuffer(POPEN_INSTANCE Open)
{
   return STATUS_SUCCESS;
}
