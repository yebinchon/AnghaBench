
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int list_attachment; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_13__ {TYPE_1__* ffmpeg_ic; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_14__ {int type; int size; int data; int name; } ;
typedef TYPE_4__ hb_attachment_t ;
typedef enum attachtype { ____Placeholder_attachtype } attachtype ;
struct TYPE_16__ {int codec_id; int extradata_size; int extradata; } ;
struct TYPE_15__ {int metadata; TYPE_6__* codecpar; } ;
struct TYPE_11__ {TYPE_5__** streams; } ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVCodecParameters ;



 int FONT_OTF_ATTACH ;
 int FONT_TTF_ATTACH ;
 TYPE_4__* calloc (int,int) ;
 char* get_ffmpeg_metadata_value (int ,char*) ;
 int hb_list_add (int ,TYPE_4__*) ;
 int malloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int strcasecmp (char const*,char*) ;
 int strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void add_ffmpeg_attachment( hb_title_t *title, hb_stream_t *stream, int id )
{
    AVStream *st = stream->ffmpeg_ic->streams[id];
    AVCodecParameters *codecpar = st->codecpar;

    enum attachtype type;
    const char *name = get_ffmpeg_metadata_value( st->metadata, "filename" );
    switch ( codecpar->codec_id )
    {
        case 128:

            type = FONT_TTF_ATTACH;
            break;
        default:
        {
            int len = name ? strlen( name ) : 0;
            if( len >= 4 )
            {


                if( !strcasecmp( name + len - 4, ".ttc" ) ||
                    !strcasecmp( name + len - 4, ".ttf" ) )
                {
                    type = FONT_TTF_ATTACH;
                    break;
                }
                else if( !strcasecmp( name + len - 4, ".otf" ) )
                {
                    type = FONT_OTF_ATTACH;
                    break;
                }
            }

            return;
        }
    }

    hb_attachment_t *attachment = calloc( 1, sizeof(*attachment) );


    attachment->type = type;
    attachment->name = strdup( name );
    attachment->data = malloc( codecpar->extradata_size );
    memcpy( attachment->data, codecpar->extradata, codecpar->extradata_size );
    attachment->size = codecpar->extradata_size;

    hb_list_add(title->list_attachment, attachment);
}
