
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ebml_master ;
struct TYPE_6__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int * tags_bc; int seekhead; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int MATROSKA_ID_TAG ;
 int MATROSKA_ID_TAGS ;
 int MATROSKA_ID_TAGTARGETS ;
 int avio_tell (int ) ;
 int end_ebml_master (int *,int ) ;
 int mkv_add_seekhead_entry (int ,int ,int ) ;
 int put_ebml_uint (int *,int ,unsigned int) ;
 int start_ebml_master (int *,int ,int ) ;
 int start_ebml_master_crc32 (int ,int **,TYPE_1__*,int ) ;

__attribute__((used)) static int mkv_write_tag_targets(AVFormatContext *s, uint32_t elementid,
                                 unsigned int uid, ebml_master *tag)
{
    AVIOContext *pb;
    MatroskaMuxContext *mkv = s->priv_data;
    ebml_master targets;
    int ret;

    if (!mkv->tags_bc) {
        ret = mkv_add_seekhead_entry(mkv->seekhead, MATROSKA_ID_TAGS, avio_tell(s->pb));
        if (ret < 0) return ret;

        start_ebml_master_crc32(s->pb, &mkv->tags_bc, mkv, MATROSKA_ID_TAGS);
    }
    pb = mkv->tags_bc;

    *tag = start_ebml_master(pb, MATROSKA_ID_TAG, 0);
    targets = start_ebml_master(pb, MATROSKA_ID_TAGTARGETS, 0);
    if (elementid)
        put_ebml_uint(pb, elementid, uid);
    end_ebml_master(pb, targets);
    return 0;
}
