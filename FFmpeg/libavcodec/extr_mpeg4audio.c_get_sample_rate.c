
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int* avpriv_mpeg4audio_sample_rates ;
 int get_bits (int *,int) ;

__attribute__((used)) static inline int get_sample_rate(GetBitContext *gb, int *index)
{
    *index = get_bits(gb, 4);
    return *index == 0x0f ? get_bits(gb, 24) :
        avpriv_mpeg4audio_sample_rates[*index];
}
