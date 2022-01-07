
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int partitions_count; TYPE_1__* partitions; } ;
struct TYPE_4__ {scalar_t__ pack_ofs; int body_sid; } ;
typedef TYPE_2__ MXFContext ;



__attribute__((used)) static int find_body_sid_by_absolute_offset(MXFContext *mxf, int64_t offset)
{

    int a, b, m;
    int64_t pack_ofs;

    a = -1;
    b = mxf->partitions_count;

    while (b - a > 1) {
        m = (a + b) >> 1;
        pack_ofs = mxf->partitions[m].pack_ofs;
        if (pack_ofs <= offset)
            a = m;
        else
            b = m;
    }

    if (a == -1)
        return 0;
    return mxf->partitions[a].body_sid;
}
