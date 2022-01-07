
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* data; int size; } ;
struct TYPE_3__ {int* data; int size; } ;


 TYPE_2__ PORTDATA1 ;
 TYPE_1__ PORTDATA2 ;
 int free (int *) ;
 int * perkeyconfig ;
 scalar_t__ perkeyconfigsize ;

void PerPortReset(void)
{
        PORTDATA1.data[0] = 0xF0;
        PORTDATA1.size = 1;
        PORTDATA2.data[0] = 0xF0;
        PORTDATA2.size = 1;

 perkeyconfigsize = 0;
        if (perkeyconfig)
           free(perkeyconfig);
 perkeyconfig = ((void*)0);
}
