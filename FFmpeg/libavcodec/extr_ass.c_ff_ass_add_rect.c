
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num_rects; TYPE_1__** rects; } ;
struct TYPE_7__ {char* ass; int type; } ;
typedef TYPE_1__ AVSubtitleRect ;
typedef TYPE_2__ AVSubtitle ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int SUBTITLE_ASS ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_1__** av_realloc_array (TYPE_1__**,int,int) ;
 char* ff_ass_get_dialog (int,int,char const*,char const*,char const*) ;

int ff_ass_add_rect(AVSubtitle *sub, const char *dialog,
                    int readorder, int layer, const char *style,
                    const char *speaker)
{
    char *ass_str;
    AVSubtitleRect **rects;

    rects = av_realloc_array(sub->rects, (sub->num_rects+1), sizeof(*sub->rects));
    if (!rects)
        return AVERROR(ENOMEM);
    sub->rects = rects;
    rects[sub->num_rects] = av_mallocz(sizeof(*rects[0]));
    if (!rects[sub->num_rects])
        return AVERROR(ENOMEM);
    rects[sub->num_rects]->type = SUBTITLE_ASS;
    ass_str = ff_ass_get_dialog(readorder, layer, style, speaker, dialog);
    if (!ass_str)
        return AVERROR(ENOMEM);
    rects[sub->num_rects]->ass = ass_str;
    sub->num_rects++;
    return 0;
}
