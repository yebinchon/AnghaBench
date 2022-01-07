
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ idVendor; scalar_t__ idProduct; TYPE_2__* configurations; } ;
typedef TYPE_3__ usb_devdesc ;
struct TYPE_6__ {TYPE_1__* interfaces; } ;
struct TYPE_5__ {int bInterfaceSubClass; scalar_t__ endpoints; } ;


 scalar_t__ PID_RETRODE ;
 scalar_t__ VID_RETRODE ;

__attribute__((used)) static bool isRetrodeMouse(usb_devdesc devdesc)
{
    if (devdesc.idVendor != VID_RETRODE || devdesc.idProduct != PID_RETRODE)
        return 0;
    if (devdesc.configurations)
        if (devdesc.configurations->interfaces)
            if (devdesc.configurations->interfaces->endpoints)
                return devdesc.configurations->interfaces->bInterfaceSubClass == 1;
    return 0;
}
