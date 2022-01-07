
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int sceCdRMode ;
struct TYPE_2__ {int trycount; int spindlctrl; } ;


 int FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__ cdReadMode ;
 int isValidDisc () ;
 int memset (void*,int ,int) ;
 int sceCdDiskReady (int ) ;
 int sceCdGetError () ;
 scalar_t__ sceCdRead (int,int,void*,int *) ;
 int sceCdSync (int ) ;

int ReadSect(u32 lsn, u32 sectors, void *buf, sceCdRMode *mode)
{
    int retry;
    int result = 0;
    cdReadMode.trycount = 32;

    for (retry = 0; retry < 32; retry++)
    {
        if (retry <= 8)
            cdReadMode.spindlctrl = 1;
        else
            cdReadMode.spindlctrl = 0;

        if (!isValidDisc())
            return FALSE;

        sceCdDiskReady(0);

        if (sceCdRead(lsn, sectors, buf, mode) != TRUE) {

            if (retry == 31) {

                memset(buf, 0, (sectors << 11));

                return FALSE;
            }
        } else {

            sceCdSync(0);
            break;
        }

        result = sceCdGetError();
        if (result == 0)
            break;
    }

    cdReadMode.trycount = 32;
    cdReadMode.spindlctrl = 1;

    if (result == 0)
        return TRUE;

    memset(buf, 0, (sectors << 11));

    return FALSE;
}
