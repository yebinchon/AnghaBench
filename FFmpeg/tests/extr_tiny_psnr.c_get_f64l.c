
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_RL64 (int *) ;
 double av_int2double (int ) ;

__attribute__((used)) static double get_f64l(uint8_t *p)
{
    return av_int2double(AV_RL64(p));
}
