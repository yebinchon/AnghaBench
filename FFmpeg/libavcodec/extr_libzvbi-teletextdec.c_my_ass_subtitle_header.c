
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_4__ {char* subtitle_header; int subtitle_header_size; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int ENOMEM ;
 char* av_asprintf (char*,int,char*,char*,char*) ;
 int av_free (char*) ;
 int ff_ass_subtitle_header_default (TYPE_1__*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int my_ass_subtitle_header(AVCodecContext *avctx)
{
    int ret = ff_ass_subtitle_header_default(avctx);
    char *new_header;
    uint8_t *event_pos;

    if (ret < 0)
        return ret;

    event_pos = strstr(avctx->subtitle_header, "\r\n[Events]\r\n");
    if (!event_pos)
        return AVERROR_BUG;

    new_header = av_asprintf("%.*s%s%s",
        (int)(event_pos - avctx->subtitle_header), avctx->subtitle_header,
        "Style: "
        "Teletext,"
        "Monospace,11,"
        "&Hffffff,&Hffffff,&H0,&H0,"
        "0,0,0,0,"
        "160,100,"
        "0,0,"
        "3,0.1,0,"
        "5,1,1,1,"
        "0\r\n"
        "Style: "
        "Subtitle,"
        "Monospace,16,"
        "&Hffffff,&Hffffff,&H0,&H0,"
        "0,0,0,0,"
        "100,100,"
        "0,0,"
        "1,1,1,"
        "8,48,48,20,"
        "0\r\n"
        , event_pos);

    if (!new_header)
        return AVERROR(ENOMEM);

    av_free(avctx->subtitle_header);
    avctx->subtitle_header = new_header;
    avctx->subtitle_header_size = strlen(new_header);
    return 0;
}
