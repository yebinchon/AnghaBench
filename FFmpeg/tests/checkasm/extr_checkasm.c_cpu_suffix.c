
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; char const* suffix; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* cpus ;

__attribute__((used)) static const char *cpu_suffix(int cpu)
{
    int i = FF_ARRAY_ELEMS(cpus);

    while (--i >= 0)
        if (cpu & cpus[i].flag)
            return cpus[i].suffix;

    return "c";
}
