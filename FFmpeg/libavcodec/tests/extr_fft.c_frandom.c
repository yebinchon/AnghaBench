
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int16_t ;
typedef double FFTSample ;
typedef int AVLFG ;


 double RANGE ;
 scalar_t__ av_lfg_get (int *) ;

__attribute__((used)) static FFTSample frandom(AVLFG *prng)
{
    return (int16_t) av_lfg_get(prng) / 32768.0 * RANGE;
}
