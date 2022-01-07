
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * extradata; scalar_t__ extradata_size; } ;
typedef TYPE_1__ hb_subtitle_t ;


 int free (int *) ;
 int hb_error (char*) ;
 scalar_t__ hb_strdup_printf (char const*,int,int,char const*,int) ;
 scalar_t__ strlen (char*) ;

int hb_subtitle_add_ssa_header(hb_subtitle_t *subtitle, const char *font,
                               int fs, int w, int h)
{

    free(subtitle->extradata);



    const char * ssa_header =
        "[Script Info]\r\n"
        "ScriptType: v4.00+\r\n"
        "Collisions: Normal\r\n"
        "PlayResX: %d\r\n"
        "PlayResY: %d\r\n"
        "Timer: 100.0\r\n"
        "WrapStyle: 0\r\n"
        "\r\n"
        "[V4+ Styles]\r\n"
        "Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding\r\n"
        "Style: Default,%s,%d,&H00FFFFFF,&H00FFFFFF,&H000F0F0F,&H000F0F0F,0,0,0,0,100,100,0,0.00,1,2,3,2,20,20,20,0\r\n";

    subtitle->extradata = (uint8_t*)hb_strdup_printf(ssa_header, w, h, font, fs);
    if (subtitle->extradata == ((void*)0))
    {
        hb_error("hb_subtitle_add_ssa_header: malloc failed");
        return 0;
    }
    subtitle->extradata_size = strlen((char*)subtitle->extradata) + 1;

    return 1;
}
