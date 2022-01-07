
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int av_bprint_append_data (int *,char const*,size_t) ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int,int ) ;
 int av_bprint_is_complete (int *) ;
 char* av_stristr (char const*,char const*) ;
 size_t strlen (char const*) ;

char *av_strireplace(const char *str, const char *from, const char *to)
{
    char *ret = ((void*)0);
    const char *pstr2, *pstr = str;
    size_t tolen = strlen(to), fromlen = strlen(from);
    AVBPrint pbuf;

    av_bprint_init(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);
    while ((pstr2 = av_stristr(pstr, from))) {
        av_bprint_append_data(&pbuf, pstr, pstr2 - pstr);
        pstr = pstr2 + fromlen;
        av_bprint_append_data(&pbuf, to, tolen);
    }
    av_bprint_append_data(&pbuf, pstr, strlen(pstr));
    if (!av_bprint_is_complete(&pbuf)) {
        av_bprint_finalize(&pbuf, ((void*)0));
    } else {
        av_bprint_finalize(&pbuf, &ret);
    }

    return ret;
}
