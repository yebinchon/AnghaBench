
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int (* bsinfo ) (TYPE_1__*,int ,TYPE_2__*) ;int codec_param; } ;
typedef TYPE_1__ hb_work_object_t ;
struct TYPE_12__ {int profile; } ;
typedef TYPE_2__ hb_work_info_t ;
struct TYPE_13__ {int h; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_14__ {int stream_type; scalar_t__* codec_name; int codec_param; void* stream_kind; int codec; int stream_id; int probe_buf; } ;
typedef TYPE_4__ hb_pes_stream_t ;
typedef int AVCodec ;


 void* A ;





 int HB_ACODEC_DCA ;
 char* av_get_profile_name (int *,int) ;
 int * avcodec_find_decoder (int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* hb_audio_decoder (int ,int ) ;
 int hb_log (char*,int ,int ,int ) ;
 int strncpy (scalar_t__*,char const*,int) ;
 int stub1 (TYPE_1__*,int ,TYPE_2__*) ;

__attribute__((used)) static int probe_dts_profile( hb_stream_t *stream, hb_pes_stream_t *pes )
{
    hb_work_info_t info;
    hb_work_object_t *w = hb_audio_decoder( stream->h, pes->codec );

    w->codec_param = pes->codec_param;
    int ret = w->bsinfo( w, pes->probe_buf, &info );
    if ( ret < 0 )
    {
        hb_log( "probe_dts_profile: no info type %d/0x%x for id 0x%x",
                pes->codec, pes->codec_param, pes->stream_id );

    }
    switch (info.profile)
    {
        case 132:
        case 130:
        case 131:
            pes->codec = HB_ACODEC_DCA;
            pes->stream_type = 0x82;
            pes->stream_kind = A;
            break;

        case 129:
        case 128:
            pes->stream_type = 0;
            pes->stream_kind = A;
            break;

        default:
            free(w);
            return 0;
    }
    const char *profile_name;
    AVCodec *codec = avcodec_find_decoder( pes->codec_param );
    profile_name = av_get_profile_name( codec, info.profile );
    if ( profile_name )
    {
        strncpy(pes->codec_name, profile_name, 80);
        pes->codec_name[79] = 0;
    }
    free(w);
    return 1;
}
