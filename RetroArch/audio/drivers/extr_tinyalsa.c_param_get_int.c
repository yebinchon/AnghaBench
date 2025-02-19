
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int max; scalar_t__ integer; } ;


 scalar_t__ param_is_interval (int) ;
 struct snd_interval* param_to_interval (struct snd_pcm_hw_params*,int) ;

__attribute__((used)) static unsigned int param_get_int(struct snd_pcm_hw_params *p, int n)
{
    if (param_is_interval(n))
    {
        struct snd_interval *i = param_to_interval(p, n);
        if (i->integer)
            return i->max;
    }
    return 0;
}
