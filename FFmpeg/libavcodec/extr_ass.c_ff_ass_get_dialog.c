
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_asprintf (char*,int,int,char const*,char const*,char const*) ;

char *ff_ass_get_dialog(int readorder, int layer, const char *style,
                        const char *speaker, const char *text)
{
    return av_asprintf("%d,%d,%s,%s,0,0,0,,%s",
                       readorder, layer, style ? style : "Default",
                       speaker ? speaker : "", text);
}
