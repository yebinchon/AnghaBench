
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int HB_RGB_TO_BGR (int ) ;
 int hb_rgb_lookup_by_name (char*) ;
 char* hb_strdup_printf (char*,...) ;
 int sscanf (char*,char*,char*) ;
 int strncmp (char*,char*,int) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static char* srt_markup_to_ssa(char *srt, int *len)
{
    char terminator;
    char color[40];
    uint32_t rgb;

    *len = 0;
    if (srt[0] != '<' && srt[0] != '{')
        return ((void*)0);

    if (srt[0] == '<')
        terminator = '>';
    else
        terminator = '}';

    if (srt[1] == 'i' && srt[2] == terminator)
    {
        *len = 3;
        return hb_strdup_printf("{\\i1}");
    }
    else if (srt[1] == 'b' && srt[2] == terminator)
    {
        *len = 3;
        return hb_strdup_printf("{\\b1}");
    }
    else if (srt[1] == 'u' && srt[2] == terminator)
    {
        *len = 3;
        return hb_strdup_printf("{\\u1}");
    }
    else if (srt[1] == '/' && srt[2] == 'i' && srt[3] == terminator)
    {
        *len = 4;
        return hb_strdup_printf("{\\i0}");
    }
    else if (srt[1] == '/' && srt[2] == 'b' && srt[3] == terminator)
    {
        *len = 4;
        return hb_strdup_printf("{\\b0}");
    }
    else if (srt[1] == '/' && srt[2] == 'u' && srt[3] == terminator)
    {
        *len = 4;
        return hb_strdup_printf("{\\u0}");
    }
    else if (srt[0] == '<' && !strncmp(srt + 1, "font", 4))
    {
        int match;
        match = sscanf(srt + 1, "font color=\"%39[^\"]\">", color);
        if (match != 1)
        {
            return ((void*)0);
        }
        while (srt[*len] != '>') (*len)++;
        (*len)++;
        if (color[0] == '#')
            rgb = strtol(color + 1, ((void*)0), 16);
        else
            rgb = hb_rgb_lookup_by_name(color);
        return hb_strdup_printf("{\\1c&H%X&}", HB_RGB_TO_BGR(rgb));
    }
    else if (srt[0] == '<' && srt[1] == '/' && !strncmp(srt + 2, "font", 4) &&
             srt[6] == '>')
    {
        *len = 7;
        return hb_strdup_printf("{\\1c&HFFFFFF&}");
    }

    return ((void*)0);
}
