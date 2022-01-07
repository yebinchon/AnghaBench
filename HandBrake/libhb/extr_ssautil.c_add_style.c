
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int underline_index; int italic_index; int bold_index; int bg_color_index; int ol_color_index; int alt_color_index; int fg_color_index; int font_size_index; int font_name_index; int style_name_index; } ;
typedef TYPE_1__ ssa_style_indicies_t ;
typedef int hb_subtitle_style_t ;
struct TYPE_7__ {int styles_count; int styles_size; int style_default; int event_style_default; TYPE_3__* styles; } ;
typedef TYPE_2__ hb_subtitle_style_context_t ;
struct TYPE_8__ {int font_size; int fg_rgb; int fg_alpha; int alt_rgb; int alt_alpha; int ol_rgb; int ol_alpha; int bg_rgb; int bg_alpha; int flags; void* font_name; void* name; } ;


 int HB_BGR_TO_RGB (int) ;
 char* HB_FONT_SANS ;
 int HB_STYLE_FLAG_BOLD ;
 int HB_STYLE_FLAG_ITALIC ;
 int HB_STYLE_FLAG_UNDERLINE ;
 char* field_value (char**,int ) ;
 void* realloc (TYPE_3__*,int) ;
 int strcasecmp (char const*,char*) ;
 void* strdup (char const*) ;
 int strlen (char const*) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int add_style(hb_subtitle_style_context_t *ctx,
                      char ** style, ssa_style_indicies_t *field_indices)
{
    const char * name;
    const char * value;
    int size;
    uint32_t rgb;
    uint32_t alpha;
    uint32_t flag;
    int style_index;

    if (style == ((void*)0))
    {
        return 0;
    }
    if (ctx->styles_count + 1 > ctx->styles_size)
    {
        void * tmp;
        ctx->styles_size = (ctx->styles_count + 1) * 2;

        tmp = realloc(ctx->styles, ctx->styles_size *
                      sizeof(hb_subtitle_style_t));
        if (tmp == ((void*)0))
        {
            return 1;
        }
        ctx->styles = tmp;
    }
    style_index = ctx->styles_count;

    name = field_value(style, field_indices->style_name_index);
    if (name == ((void*)0))
    {
        name = "Default";
    }
    if (!strcasecmp(name, "Default"))
    {
        ctx->style_default = style_index;
        ctx->event_style_default = ctx->style_default;
    }
    ctx->styles[style_index].name = strdup(name);

    value = field_value(style, field_indices->font_name_index);
    if (value == ((void*)0))
    {
        value = HB_FONT_SANS;
    }
    ctx->styles[style_index].font_name = strdup(value);

    value = field_value(style, field_indices->font_size_index);
    if (value == ((void*)0))
    {
        size = 72;
    }
    else
    {
        size = strtol(value, ((void*)0), 0);
    }
    ctx->styles[style_index].font_size = size;

    value = field_value(style, field_indices->fg_color_index);
    if (value == ((void*)0) || strlen(value) < 3)
    {
        rgb = 0x00ffffff;
        alpha = 0xff;
    }
    else
    {
        int abgr = strtol(value+2, ((void*)0), 16);
        rgb = HB_BGR_TO_RGB(abgr);
        alpha = abgr >> 24;
    }
    ctx->styles[style_index].fg_rgb = rgb;

    ctx->styles[style_index].fg_alpha = 255 - alpha;

    value = field_value(style, field_indices->alt_color_index);
    if (value == ((void*)0) || strlen(value) < 3)
    {
        rgb = 0x00ffffff;
        alpha = 0xff;
    }
    else
    {
        int abgr = strtol(value+2, ((void*)0), 16);
        rgb = HB_BGR_TO_RGB(abgr);
        alpha = abgr >> 24;
    }
    ctx->styles[style_index].alt_rgb = rgb;
    ctx->styles[style_index].alt_alpha = alpha;

    value = field_value(style, field_indices->ol_color_index);
    if (value == ((void*)0) || strlen(value) < 3)
    {
        rgb = 0x000f0f0f;
        alpha = 0xff;
    }
    else
    {
        int abgr = strtol(value+2, ((void*)0), 16);
        rgb = HB_BGR_TO_RGB(abgr);
        alpha = abgr >> 24;
    }
    ctx->styles[style_index].ol_rgb = rgb;
    ctx->styles[style_index].ol_alpha = alpha;

    value = field_value(style, field_indices->bg_color_index);
    if (value == ((void*)0) || strlen(value) < 3)
    {
        rgb = 0x000f0f0f;
        alpha = 0xff;
    }
    else
    {
        int abgr = strtol(value+2, ((void*)0), 16);
        rgb = HB_BGR_TO_RGB(abgr);
        alpha = abgr >> 24;
    }
    ctx->styles[style_index].bg_rgb = rgb;
    ctx->styles[style_index].bg_alpha = alpha;

    ctx->styles[style_index].flags = 0;

    value = field_value(style, field_indices->bold_index);
    if (value == ((void*)0))
    {
        flag = HB_STYLE_FLAG_BOLD;
    }
    else
    {
        flag = strtol(value, ((void*)0), 0) ? HB_STYLE_FLAG_BOLD : 0;
    }
    ctx->styles[style_index].flags |= flag;

    value = field_value(style, field_indices->italic_index);
    if (value == ((void*)0))
    {
        flag = HB_STYLE_FLAG_ITALIC;
    }
    else
    {
        flag = strtol(value, ((void*)0), 0) ? HB_STYLE_FLAG_ITALIC : 0;
    }
    ctx->styles[style_index].flags |= flag;

    value = field_value(style, field_indices->underline_index);
    if (value == ((void*)0))
    {
        flag = HB_STYLE_FLAG_UNDERLINE;
    }
    else
    {
        flag = strtol(value, ((void*)0), 0) ? HB_STYLE_FLAG_UNDERLINE : 0;
    }
    ctx->styles[style_index].flags |= flag;

    ctx->styles_count = style_index + 1;

    return 0;
}
