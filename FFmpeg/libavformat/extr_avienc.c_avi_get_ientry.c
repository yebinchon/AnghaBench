
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** cluster; } ;
typedef TYPE_1__ AVIIndex ;
typedef int AVIIentry ;


 int AVI_INDEX_CLUSTER_SIZE ;

__attribute__((used)) static inline AVIIentry *avi_get_ientry(const AVIIndex *idx, int ent_id)
{
    int cl = ent_id / AVI_INDEX_CLUSTER_SIZE;
    int id = ent_id % AVI_INDEX_CLUSTER_SIZE;
    return &idx->cluster[cl][id];
}
