
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int lastinteraction; int querybuf_peak; int querybuf; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int unixtime; } ;


 size_t PROTO_MBULK_BIG_ARG ;
 size_t sdsAllocSize (int ) ;
 int sdsRemoveFreeSpace (int ) ;
 int sdsavail (int ) ;
 TYPE_2__ server ;

int clientsCronResizeQueryBuffer(client *c) {
    size_t querybuf_size = sdsAllocSize(c->querybuf);
    time_t idletime = server.unixtime - c->lastinteraction;




    if (((querybuf_size > PROTO_MBULK_BIG_ARG) &&
         (querybuf_size/(c->querybuf_peak+1)) > 2) ||
         (querybuf_size > 1024 && idletime > 2))
    {

        if (sdsavail(c->querybuf) > 1024) {
            c->querybuf = sdsRemoveFreeSpace(c->querybuf);
        }
    }


    c->querybuf_peak = 0;
    return 0;
}
