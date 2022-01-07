
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVLFG ;


 scalar_t__ UINT_MAX ;
 double av_lfg_get (int *) ;

__attribute__((used)) static double dbl_rand(AVLFG *lfg)
{
    return 2.0 * (av_lfg_get(lfg) / (double)UINT_MAX) - 1.0;
}
