
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UserEvent; int IoStatus; int * UserIosb; } ;
typedef int PVOID ;
typedef TYPE_1__* PIRP ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int FALSE ;
 int KeSetEvent (int ,int ,int ) ;
 int STATUS_MORE_PROCESSING_REQUIRED ;

__attribute__((used)) static NTSTATUS PacketDumpCompletion(PDEVICE_OBJECT DeviceObject,
                                PIRP Irp,
                                PVOID Context)
{


    *Irp->UserIosb = Irp->IoStatus;


    KeSetEvent(Irp->UserEvent, 0, FALSE);

    return STATUS_MORE_PROCESSING_REQUIRED;
}
