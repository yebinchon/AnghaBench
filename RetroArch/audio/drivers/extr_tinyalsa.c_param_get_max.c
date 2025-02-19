
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int max; } ;


 struct snd_interval* param_get_interval (struct snd_pcm_hw_params const*,int) ;
 scalar_t__ param_is_interval (int) ;

__attribute__((used)) static unsigned int param_get_max(const struct snd_pcm_hw_params *p, int n)
{
    if (param_is_interval(n))
    {
        const struct snd_interval *i = param_get_interval(p, n);
        return i->max;
    }
    return 0;
}
