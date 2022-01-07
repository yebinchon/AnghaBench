
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cdVolDesc {int filesystemType; int volID; } ;
struct TYPE_3__ {int filesystemType; } ;


 TYPE_1__ CDVolDesc ;
 int ReadSect (int,int,struct cdVolDesc*,int *) ;
 int TRUE ;
 int cdReadMode ;
 int memcpy (TYPE_1__*,struct cdVolDesc*,int) ;
 int printf (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

int CDVD_GetVolumeDescriptor(void)
{

    int volDescSector;

    static struct cdVolDesc localVolDesc;





    for (volDescSector = 16; volDescSector < 20; volDescSector++) {
        ReadSect(volDescSector, 1, &localVolDesc, &cdReadMode);


        if (strncmp(localVolDesc.volID, "CD001", 5) == 0) {
            if ((localVolDesc.filesystemType == 1) ||
                (localVolDesc.filesystemType == 2)) {
                memcpy(&CDVolDesc, &localVolDesc, sizeof(struct cdVolDesc));
            }
        } else
            break;
    }
    return TRUE;
}
