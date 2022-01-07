
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_18__ {int* linesize; int ** data; } ;
struct TYPE_17__ {TYPE_3__* glyph; } ;
struct TYPE_16__ {int ctx; } ;
struct TYPE_14__ {int rows; int width; int * buffer; } ;
struct TYPE_13__ {int x; } ;
struct TYPE_15__ {int linearHoriAdvance; int bitmap_top; int bitmap_left; TYPE_2__ bitmap; TYPE_1__ advance; } ;
typedef TYPE_4__ ShowCQTContext ;
typedef int * FT_Library ;
typedef TYPE_5__* FT_Face ;
typedef TYPE_6__ AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int FT_Done_Face (TYPE_5__*) ;
 int FT_Done_FreeType (int *) ;
 scalar_t__ FT_Init_FreeType (int **) ;
 int FT_LOAD_RENDER ;
 scalar_t__ FT_Load_Char (TYPE_5__*,char const,int ) ;
 scalar_t__ FT_New_Face (int *,char*,int ,TYPE_5__**) ;
 scalar_t__ FT_Set_Char_Size (TYPE_5__*,int,int ,int ,int ) ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int render_freetype(ShowCQTContext *s, AVFrame *tmp, char *fontfile)
{
    if (fontfile)
        av_log(s->ctx, AV_LOG_WARNING, "freetype is not available, ignoring fontfile option.\n");
    return AVERROR(EINVAL);

}
