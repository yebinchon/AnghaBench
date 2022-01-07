
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_23__ {int metadata; int id; TYPE_1__* codecpar; } ;
struct TYPE_22__ {int id; } ;
struct TYPE_21__ {int fc; } ;
struct TYPE_20__ {int package_uid; int package_ul; } ;
struct TYPE_19__ {int source_package_uid; int source_package_ul; } ;
struct TYPE_18__ {TYPE_2__* sequence; scalar_t__* name; int track_id; } ;
struct TYPE_17__ {int structural_components_count; int data_definition_ul; int * structural_components_refs; } ;
struct TYPE_16__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ MXFTrack ;
typedef TYPE_4__ MXFStructuralComponent ;
typedef TYPE_5__ MXFPackage ;
typedef TYPE_6__ MXFContext ;
typedef TYPE_7__ MXFCodecUL ;
typedef TYPE_8__ AVStream ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_DATA ;
 int AV_CODEC_ID_NONE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_dict_set (int *,char*,scalar_t__*,int ) ;
 scalar_t__* av_get_media_type_string (int ) ;
 int av_log (int ,int ,char*) ;
 TYPE_8__* avformat_new_stream (int ,int *) ;
 int ff_mxf_data_definition_uls ;
 int memcpy (int *,int ,int) ;
 int mxf_add_umid_metadata (int *,char*,TYPE_5__*) ;
 TYPE_7__* mxf_get_codec_ul (int ,int *) ;
 TYPE_4__* mxf_resolve_sourceclip (TYPE_6__*,int *) ;

__attribute__((used)) static int mxf_add_metadata_stream(MXFContext *mxf, MXFTrack *track)
{
    MXFStructuralComponent *component = ((void*)0);
    const MXFCodecUL *codec_ul = ((void*)0);
    MXFPackage tmp_package;
    AVStream *st;
    int j;

    for (j = 0; j < track->sequence->structural_components_count; j++) {
        component = mxf_resolve_sourceclip(mxf, &track->sequence->structural_components_refs[j]);
        if (!component)
            continue;
        break;
    }
    if (!component)
        return 0;

    st = avformat_new_stream(mxf->fc, ((void*)0));
    if (!st) {
        av_log(mxf->fc, AV_LOG_ERROR, "could not allocate metadata stream\n");
        return AVERROR(ENOMEM);
    }

    st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
    st->codecpar->codec_id = AV_CODEC_ID_NONE;
    st->id = track->track_id;

    memcpy(&tmp_package.package_ul, component->source_package_ul, 16);
    memcpy(&tmp_package.package_uid, component->source_package_uid, 16);
    mxf_add_umid_metadata(&st->metadata, "file_package_umid", &tmp_package);
    if (track->name && track->name[0])
        av_dict_set(&st->metadata, "track_name", track->name, 0);

    codec_ul = mxf_get_codec_ul(ff_mxf_data_definition_uls, &track->sequence->data_definition_ul);
    av_dict_set(&st->metadata, "data_type", av_get_media_type_string(codec_ul->id), 0);
    return 0;
}
