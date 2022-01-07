
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const*** hb_x264_encopt_synonyms ;
 int strcmp (char const*,char const*) ;

const char * hb_x264_encopt_name(const char *name)
{
    int i;
    for (i = 0; hb_x264_encopt_synonyms[i][0] != ((void*)0); i++)
        if (!strcmp(name, hb_x264_encopt_synonyms[i][1]))
            return hb_x264_encopt_synonyms[i][0];
    return name;
}
