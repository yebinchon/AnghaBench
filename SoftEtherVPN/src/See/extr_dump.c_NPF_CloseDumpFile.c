
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int QuadPart; } ;
struct TYPE_7__ {int DumpFileObject; int * DumpFileHandle; int DumpFileName; TYPE_1__ DumpOffset; } ;
typedef TYPE_2__* POPEN_INSTANCE ;
typedef int NTSTATUS ;


 int DbgPrint (char*,...) ;
 int IF_LOUD (int ) ;
 int NPF_OpenDumpFile (TYPE_2__*,int *,int ) ;
 int NPF_SaveCurrentBuffer (TYPE_2__*) ;
 int ObDereferenceObject (int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TRUE ;
 int ZwClose (int *) ;

NTSTATUS NPF_CloseDumpFile(POPEN_INSTANCE Open){
   return STATUS_SUCCESS;
}
