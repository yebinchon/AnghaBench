
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int nodes_black_list; } ;


 int CLUSTER_NAMELEN ;
 int clusterBlacklistCleanup () ;
 int * dictFind (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnewlen (char*,int ) ;
 TYPE_2__ server ;

int clusterBlacklistExists(char *nodeid) {
    sds id = sdsnewlen(nodeid,CLUSTER_NAMELEN);
    int retval;

    clusterBlacklistCleanup();
    retval = dictFind(server.cluster->nodes_black_list,id) != ((void*)0);
    sdsfree(id);
    return retval;
}
