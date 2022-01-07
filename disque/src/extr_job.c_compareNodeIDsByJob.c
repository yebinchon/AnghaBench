
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* id; } ;
typedef TYPE_1__ job ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ clusterNode ;


 int CLUSTER_NAMELEN ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,int ,int) ;

int compareNodeIDsByJob(clusterNode *nodea, clusterNode *nodeb, job *j) {
    int i;
    char ida[CLUSTER_NAMELEN], idb[CLUSTER_NAMELEN];
    memcpy(ida,nodea->name,CLUSTER_NAMELEN);
    memcpy(idb,nodeb->name,CLUSTER_NAMELEN);
    for (i = 0; i < CLUSTER_NAMELEN; i++) {


        ida[i] ^= j->id[11 + i%24];
        idb[i] ^= j->id[11 + i%24];
    }
    return memcmp(ida,idb,CLUSTER_NAMELEN);
}
