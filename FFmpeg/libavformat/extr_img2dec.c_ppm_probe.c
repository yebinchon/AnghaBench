
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVProbeData ;


 scalar_t__ pnm_magic_check (int const*,int) ;
 int pnm_probe (int const*) ;

__attribute__((used)) static int ppm_probe(const AVProbeData *p)
{
    return pnm_magic_check(p, 3) || pnm_magic_check(p, 6) ? pnm_probe(p) : 0;
}
