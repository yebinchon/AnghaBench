
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t actIntonation; } ;


 int* sample_rate ;
 TYPE_1__ votraxsc01_locals ;

__attribute__((used)) static int time_to_samples(int ms)
{
 return sample_rate[votraxsc01_locals.actIntonation]*ms/1000;
}
