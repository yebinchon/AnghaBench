
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_32__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


struct TYPE_43__ {int nb_streams; TYPE_4__** streams; int metadata; TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_42__ {scalar_t__ buf_ptr; } ;
struct TYPE_41__ {TYPE_1__* priv_data; } ;
struct TYPE_40__ {int store_user_comments; int track_instance_count; int tagged_value_count; TYPE_4__* timecode_track; int timestamp; } ;
struct TYPE_39__ {int (* write_desc ) (TYPE_6__*,TYPE_4__*) ;} ;
struct TYPE_38__ {int instance; int type; int name; } ;
struct TYPE_37__ {size_t index; } ;
typedef TYPE_1__ MXFStreamContext ;
typedef TYPE_2__ MXFPackage ;
typedef TYPE_3__ MXFContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AV_LOG_DEBUG ;
 int MaterialPackage ;
 int MultipleDescriptor ;
 int PRINT_KEY (TYPE_6__*,char*,scalar_t__) ;
 int SourcePackage ;
 int SubDescriptor ;
 int TaggedValue ;
 int TapeDescriptor ;
 int Track ;
 int av_log (TYPE_6__*,int ,char*,int ) ;
 int avio_wb64 (TYPE_5__*,int ) ;
 int klv_encode_ber_length (TYPE_5__*,int) ;
 TYPE_32__* mxf_essence_container_uls ;
 int mxf_utf16_local_tag_length (int ) ;
 int mxf_write_local_tag (TYPE_5__*,int,int) ;
 int mxf_write_local_tag_utf16 (TYPE_5__*,int,int ) ;
 int mxf_write_metadata_key (TYPE_5__*,int) ;
 int mxf_write_multi_descriptor (TYPE_6__*) ;
 int mxf_write_refs_count (TYPE_5__*,int) ;
 int mxf_write_sequence (TYPE_6__*,TYPE_4__*,TYPE_2__*) ;
 int mxf_write_structural_component (TYPE_6__*,TYPE_4__*,TYPE_2__*) ;
 int mxf_write_tape_descriptor (TYPE_6__*) ;
 int mxf_write_timecode_component (TYPE_6__*,TYPE_4__*,TYPE_2__*) ;
 int mxf_write_track (TYPE_6__*,TYPE_4__*,TYPE_2__*) ;
 int mxf_write_umid (TYPE_6__*,int) ;
 int mxf_write_user_comments (TYPE_6__*,int ) ;
 int mxf_write_uuid (TYPE_5__*,int ,int) ;
 int stub1 (TYPE_6__*,TYPE_4__*) ;

__attribute__((used)) static void mxf_write_package(AVFormatContext *s, MXFPackage *package)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int i, track_count = s->nb_streams+1;
    int name_size = mxf_utf16_local_tag_length(package->name);
    int user_comment_count = 0;

    if (package->type == MaterialPackage) {
        if (mxf->store_user_comments)
            user_comment_count = mxf_write_user_comments(s, s->metadata);
        mxf_write_metadata_key(pb, 0x013600);
        PRINT_KEY(s, "Material Package key", pb->buf_ptr - 16);
        klv_encode_ber_length(pb, 92 + name_size + (16*track_count) + (16*user_comment_count) + 12LL*mxf->store_user_comments);
    } else {
        mxf_write_metadata_key(pb, 0x013700);
        PRINT_KEY(s, "Source Package key", pb->buf_ptr - 16);
        klv_encode_ber_length(pb, 112 + name_size + (16*track_count) + 12LL*mxf->store_user_comments);
    }


    mxf_write_local_tag(pb, 16, 0x3C0A);
    mxf_write_uuid(pb, package->type, package->instance);
    av_log(s, AV_LOG_DEBUG, "package type:%d\n", package->type);
    PRINT_KEY(s, "package uid", pb->buf_ptr - 16);


    mxf_write_local_tag(pb, 32, 0x4401);
    mxf_write_umid(s, package->instance);
    PRINT_KEY(s, "package umid second part", pb->buf_ptr - 16);


    if (name_size)
        mxf_write_local_tag_utf16(pb, 0x4402, package->name);


    mxf_write_local_tag(pb, 8, 0x4405);
    avio_wb64(pb, mxf->timestamp);


    mxf_write_local_tag(pb, 8, 0x4404);
    avio_wb64(pb, mxf->timestamp);


    mxf_write_local_tag(pb, track_count*16 + 8, 0x4403);
    mxf_write_refs_count(pb, track_count);

    for (i = 0; i < track_count; i++)
        mxf_write_uuid(pb, Track, mxf->track_instance_count + i);


    if (mxf->store_user_comments) {
        mxf_write_local_tag(pb, user_comment_count*16 + 8, 0x4406);
        mxf_write_refs_count(pb, user_comment_count);
        for (i = 0; i < user_comment_count; i++)
            mxf_write_uuid(pb, TaggedValue, mxf->tagged_value_count - user_comment_count + i);
    }


    if (package->type == SourcePackage && package->instance == 1) {
        mxf_write_local_tag(pb, 16, 0x4701);
        if (s->nb_streams > 1) {
            mxf_write_uuid(pb, MultipleDescriptor, 0);
            mxf_write_multi_descriptor(s);
        } else
            mxf_write_uuid(pb, SubDescriptor, 0);
    } else if (package->type == SourcePackage && package->instance == 2) {
        mxf_write_local_tag(pb, 16, 0x4701);
        mxf_write_uuid(pb, TapeDescriptor, 0);
        mxf_write_tape_descriptor(s);
    }
    mxf_write_track(s, mxf->timecode_track, package);
    mxf_write_sequence(s, mxf->timecode_track, package);
    mxf_write_timecode_component(s, mxf->timecode_track, package);
    mxf->track_instance_count++;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        mxf_write_track(s, st, package);
        mxf_write_sequence(s, st, package);
        mxf_write_structural_component(s, st, package);
        mxf->track_instance_count++;

        if (package->type == SourcePackage && package->instance == 1) {
            MXFStreamContext *sc = st->priv_data;
            mxf_essence_container_uls[sc->index].write_desc(s, st);
        }
    }
}
