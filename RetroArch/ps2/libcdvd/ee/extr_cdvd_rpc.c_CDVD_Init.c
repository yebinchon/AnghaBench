
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ server; } ;


 int CDVD_IRX ;
 scalar_t__ SifBindRpc (TYPE_1__*,int ,int ) ;
 TYPE_1__ cd0 ;
 int cdvd_inited ;

int CDVD_Init()
{
    int i;

    while (1) {
        if (SifBindRpc(&cd0, CDVD_IRX, 0) < 0)
            return -1;
        if (cd0.server != 0)
            break;
        i = 0x10000;
        while (i--)
            ;
    }

    cdvd_inited = 1;

    return 0;
}
