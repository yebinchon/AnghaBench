
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int service; void* major; void* minor; } ;
typedef TYPE_1__ tBTA_UTL_COD ;
typedef void* UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int BTM_COD_MAJOR_CLASS (void*,void**) ;
 int BTM_COD_MINOR_CLASS (void*,void**) ;
 int BTM_COD_SERVICE_CLASS (int ,void**) ;
 void** BTM_ReadDeviceClass () ;
 int TRUE ;

BOOLEAN utl_get_device_class(tBTA_UTL_COD *p_cod)
{
    UINT8 *dev;
    UINT16 service;
    UINT8 minor, major;

    dev = BTM_ReadDeviceClass();
    BTM_COD_SERVICE_CLASS( service, dev );
    BTM_COD_MINOR_CLASS(minor, dev );
    BTM_COD_MAJOR_CLASS(major, dev );

    p_cod->minor = minor;
    p_cod->major = major;
    p_cod->service = service;

    return TRUE;
}
