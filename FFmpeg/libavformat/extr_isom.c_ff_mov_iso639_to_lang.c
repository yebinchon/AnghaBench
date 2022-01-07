
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FF_ARRAY_ELEMS (int *) ;
 int * mov_mdhd_language_map ;
 int strcmp (char const*,int ) ;

int ff_mov_iso639_to_lang(const char lang[4], int mp4)
{
    int i, code = 0;


    for (i = 0; lang[0] && !mp4 && i < FF_ARRAY_ELEMS(mov_mdhd_language_map); i++) {
        if (!strcmp(lang, mov_mdhd_language_map[i]))
            return i;
    }

    if (!mp4)
        return -1;

    if (lang[0] == '\0')
        lang = "und";

    for (i = 0; i < 3; i++) {
        uint8_t c = lang[i];
        c -= 0x60;
        if (c > 0x1f)
            return -1;
        code <<= 5;
        code |= c;
    }
    return code;
}
