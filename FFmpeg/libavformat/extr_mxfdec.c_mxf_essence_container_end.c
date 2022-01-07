
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int partitions_count; TYPE_1__* partitions; } ;
struct TYPE_4__ {int body_sid; scalar_t__ essence_length; scalar_t__ essence_offset; } ;
typedef TYPE_1__ MXFPartition ;
typedef TYPE_2__ MXFContext ;



__attribute__((used)) static int64_t mxf_essence_container_end(MXFContext *mxf, int body_sid)
{
    for (int x = mxf->partitions_count - 1; x >= 0; x--) {
        MXFPartition *p = &mxf->partitions[x];

        if (p->body_sid != body_sid)
            continue;

        if (!p->essence_length)
            return 0;

        return p->essence_offset + p->essence_length;
    }

    return 0;
}
