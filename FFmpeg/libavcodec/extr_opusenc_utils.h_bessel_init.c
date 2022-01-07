
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFBesselFilter ;


 int bessel_reinit (int *,float,float,float,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline int bessel_init(FFBesselFilter *s, float n, float f0, float fs,
                              int highpass)
{
    memset(s, 0, sizeof(FFBesselFilter));
    return bessel_reinit(s, n, f0, fs, highpass);
}
