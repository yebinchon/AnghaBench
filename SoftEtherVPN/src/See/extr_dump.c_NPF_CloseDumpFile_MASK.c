#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_7__ {int /*<<< orphan*/  DumpFileObject; int /*<<< orphan*/ * DumpFileHandle; int /*<<< orphan*/  DumpFileName; TYPE_1__ DumpOffset; } ;
typedef  TYPE_2__* POPEN_INSTANCE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(POPEN_INSTANCE Open){
#if 0
    IF_LOUD(DbgPrint("NPF: NPF_CloseDumpFile.\n");)
    IF_LOUD(DbgPrint("Dumpoffset=%d\n",Open->DumpOffset.QuadPart);)

DbgPrint("1\n");
   // Consistency check
   if(Open->DumpFileHandle == NULL)
      return STATUS_UNSUCCESSFUL;

DbgPrint("2\n");
   ZwClose( Open->DumpFileHandle );

   ObDereferenceObject(Open->DumpFileObject);
/*
   if(Open->DumpLimitReached == TRUE)
      // Limit already reached: don't save the rest of the buffer.
      return STATUS_SUCCESS;
*/
DbgPrint("3\n");

   NPF_OpenDumpFile(Open,&Open->DumpFileName, TRUE);

   // Flush the buffer to file 
   NPF_SaveCurrentBuffer(Open);

   // Close The file
   ObDereferenceObject(Open->DumpFileObject);
   ZwClose( Open->DumpFileHandle );
   
   Open->DumpFileHandle = NULL;

   ObDereferenceObject(Open->DumpFileObject);
#endif
   return STATUS_SUCCESS;
}