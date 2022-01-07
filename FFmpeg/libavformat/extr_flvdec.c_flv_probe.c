
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVProbeData ;


 int probe (int const*,int ) ;

__attribute__((used)) static int flv_probe(const AVProbeData *p)
{
    return probe(p, 0);
}
