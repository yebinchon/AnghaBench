
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_4__ {scalar_t__ unixtime; TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes_black_list; } ;


 int dictDelete (int ,int ) ;
 int dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 scalar_t__ dictGetUnsignedIntegerVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_2__ server ;

void clusterBlacklistCleanup(void) {
    dictIterator *di;
    dictEntry *de;

    di = dictGetSafeIterator(server.cluster->nodes_black_list);
    while((de = dictNext(di)) != ((void*)0)) {
        int64_t expire = dictGetUnsignedIntegerVal(de);

        if (expire < server.unixtime)
            dictDelete(server.cluster->nodes_black_list,dictGetKey(de));
    }
    dictReleaseIterator(di);
}
