
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int cluster_pos; int cluster_bc; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_flush (int ) ;
 int end_ebml_master_crc32 (int ,int *,TYPE_1__*) ;

__attribute__((used)) static void mkv_end_cluster(AVFormatContext *s)
{
    MatroskaMuxContext *mkv = s->priv_data;

    end_ebml_master_crc32(s->pb, &mkv->cluster_bc, mkv);
    mkv->cluster_pos = -1;
    avio_flush(s->pb);
}
