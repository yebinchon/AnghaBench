
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVOption ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (int **) ;
 int * av_strdup (char const*) ;

__attribute__((used)) static int set_string(void *obj, const AVOption *o, const char *val, uint8_t **dst)
{
    av_freep(dst);
    *dst = av_strdup(val);
    return *dst ? 0 : AVERROR(ENOMEM);
}
