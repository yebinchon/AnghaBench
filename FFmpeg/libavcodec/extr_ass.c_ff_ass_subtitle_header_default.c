
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int ASS_DEFAULT_ALIGNMENT ;
 int ASS_DEFAULT_BACK_COLOR ;
 int ASS_DEFAULT_BOLD ;
 int ASS_DEFAULT_BORDERSTYLE ;
 int ASS_DEFAULT_COLOR ;
 int ASS_DEFAULT_FONT ;
 int ASS_DEFAULT_FONT_SIZE ;
 int ASS_DEFAULT_ITALIC ;
 int ASS_DEFAULT_UNDERLINE ;
 int ff_ass_subtitle_header (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int ff_ass_subtitle_header_default(AVCodecContext *avctx)
{
    return ff_ass_subtitle_header(avctx, ASS_DEFAULT_FONT,
                               ASS_DEFAULT_FONT_SIZE,
                               ASS_DEFAULT_COLOR,
                               ASS_DEFAULT_BACK_COLOR,
                               ASS_DEFAULT_BOLD,
                               ASS_DEFAULT_ITALIC,
                               ASS_DEFAULT_UNDERLINE,
                               ASS_DEFAULT_BORDERSTYLE,
                               ASS_DEFAULT_ALIGNMENT);
}
