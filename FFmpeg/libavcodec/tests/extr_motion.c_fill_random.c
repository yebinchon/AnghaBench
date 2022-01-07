
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVLFG ;


 int av_lfg_get (int *) ;
 int av_lfg_init (int *,int) ;

__attribute__((used)) static void fill_random(uint8_t *tab, int size)
{
    int i;
    AVLFG prng;

    av_lfg_init(&prng, 1);
    for(i=0;i<size;i++) {
        tab[i] = av_lfg_get(&prng) % 256;
    }
}
