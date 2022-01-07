
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {int list_audio; } ;
typedef TYPE_5__ hb_title_t ;
struct TYPE_17__ {TYPE_7__* list; } ;
struct TYPE_22__ {int reg_desc; TYPE_1__ pes; } ;
typedef TYPE_6__ hb_stream_t ;
struct TYPE_23__ {int stream_id_ext; int stream_id; int stream_type; int lang_code; int codec_param; int codec; } ;
typedef TYPE_7__ hb_pes_stream_t ;
struct TYPE_18__ {int num; int den; } ;
struct TYPE_19__ {int substream_type; int track; TYPE_2__ timebase; int codec_param; int codec; int stream_type; int reg_desc; } ;
struct TYPE_20__ {TYPE_3__ in; } ;
struct TYPE_24__ {int id; TYPE_4__ config; } ;
typedef TYPE_8__ hb_audio_t ;


 TYPE_8__* calloc (int,int) ;
 int get_id (TYPE_7__*) ;
 int hb_list_add (int ,TYPE_8__*) ;
 int hb_list_count (int ) ;
 int hb_list_insert (int ,int,TYPE_8__*) ;
 TYPE_8__* hb_list_item (int ,int) ;
 int hb_log (char*,int,int ,int,int) ;
 int lang_for_code (int ) ;
 int set_audio_description (TYPE_8__*,int ) ;

__attribute__((used)) static void pes_add_audio_to_title(
    hb_stream_t *stream,
    int idx,
    hb_title_t *title,
    int sort)
{
    hb_pes_stream_t *pes = &stream->pes.list[idx];



    int id = get_id( pes );
    int i;
    hb_audio_t *tmp = ((void*)0);

    int count = hb_list_count( title->list_audio );


    for ( i = 0; i < count; i++ )
    {
        tmp = hb_list_item( title->list_audio, i );
        if ( id == tmp->id )
            return;
    }

    hb_audio_t *audio = calloc( sizeof( hb_audio_t ), 1 );

    audio->id = id;
    audio->config.in.reg_desc = stream->reg_desc;
    audio->config.in.stream_type = pes->stream_type;
    audio->config.in.substream_type = pes->stream_id_ext;

    audio->config.in.codec = pes->codec;
    audio->config.in.codec_param = pes->codec_param;
    audio->config.in.timebase.num = 1;
    audio->config.in.timebase.den = 90000;

    set_audio_description(audio, lang_for_code(pes->lang_code));

    hb_log("stream id 0x%x (type 0x%x substream 0x%x) audio 0x%x",
           pes->stream_id, pes->stream_type, pes->stream_id_ext, audio->id);

    audio->config.in.track = idx;


    if ( sort >= 0 )
    {
        sort = sort < count ? sort : count;
        for ( i = sort; i < count; i++ )
        {
            tmp = hb_list_item( title->list_audio, i );
            int sid = tmp->id & 0xffff;
            int ssid = tmp->id >> 16;
            if ( pes->stream_id < sid )
                break;
            else if ( pes->stream_id <= sid &&
                      pes->stream_id_ext <= ssid )
            {
                break;
            }
        }
        hb_list_insert( title->list_audio, i, audio );
    }
    else
    {
        hb_list_add( title->list_audio, audio );
    }
}
