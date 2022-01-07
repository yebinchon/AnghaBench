
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PDRIVER_OBJECT ;


 int NdisMDeregisterMiniportDriver (int ) ;
 int ndis_miniport_driver_handle ;

VOID NeoNdisDriverUnload(PDRIVER_OBJECT DriverObject)
{
 NdisMDeregisterMiniportDriver(ndis_miniport_driver_handle);
}
