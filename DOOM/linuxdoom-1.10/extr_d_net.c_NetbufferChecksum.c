
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retransmitfrom; } ;
typedef TYPE_1__ doomdata_t ;
struct TYPE_4__ {int retransmitfrom; } ;


 unsigned int NCMD_CHECKSUM ;
 int NetbufferSize () ;
 TYPE_2__* netbuffer ;

unsigned NetbufferChecksum (void)
{
    unsigned c;
    int i,l;

    c = 0x1234567;






    l = (NetbufferSize () - (int)&(((doomdata_t *)0)->retransmitfrom))/4;
    for (i=0 ; i<l ; i++)
 c += ((unsigned *)&netbuffer->retransmitfrom)[i] * (i+1);

    return c & NCMD_CHECKSUM;
}
