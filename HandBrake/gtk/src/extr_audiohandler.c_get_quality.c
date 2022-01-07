
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float gdouble ;


 int hb_audio_quality_get_limits (int,float*,float*,float*,int*) ;

__attribute__((used)) static gdouble get_quality(int codec, gdouble quality)
{
    float low, high, gran;
    int dir;
    hb_audio_quality_get_limits(codec, &low, &high, &gran, &dir);
    if (dir)
    {

        quality = high - quality + low;
    }
    return quality;
}
