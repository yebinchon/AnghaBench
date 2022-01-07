
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor; int major; int service; } ;
typedef TYPE_1__ tBTA_UTL_COD ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int DEV_CLASS ;
typedef int BOOLEAN ;







 int BTM_COD_MAJOR_CLASS (int,int*) ;
 int BTM_COD_MAJOR_CLASS_MASK ;
 int BTM_COD_MINOR_CLASS (int,int*) ;
 int BTM_COD_MINOR_CLASS_MASK ;
 int BTM_COD_SERVICE_CLASS (int,int*) ;
 int BTM_COD_SERVICE_CLASS_MASK ;
 int* BTM_ReadDeviceClass () ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BTM_SetDeviceClass (int ) ;
 int FALSE ;
 int FIELDS_TO_COD (int ,int,int,int) ;
 int TRUE ;

BOOLEAN utl_set_device_class(tBTA_UTL_COD *p_cod, UINT8 cmd)
{
    UINT8 *dev;
    UINT16 service;
    UINT8 minor, major;
    DEV_CLASS dev_class;

    dev = BTM_ReadDeviceClass();
    BTM_COD_SERVICE_CLASS( service, dev );
    BTM_COD_MINOR_CLASS(minor, dev );
    BTM_COD_MAJOR_CLASS(major, dev );

    switch (cmd) {
    case 129:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        break;

    case 128:

        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case 132:
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service & (~p_cod->service);
        break;

    case 130:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case 131:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        service = p_cod->service & BTM_COD_SERVICE_CLASS_MASK;
        break;

    default:
        return FALSE;
    }


    FIELDS_TO_COD(dev_class, minor, major, service);

    if (BTM_SetDeviceClass(dev_class) == BTM_SUCCESS) {
        return TRUE;
    }

    return FALSE;
}
