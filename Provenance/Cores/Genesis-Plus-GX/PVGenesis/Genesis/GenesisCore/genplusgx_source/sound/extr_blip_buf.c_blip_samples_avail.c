
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ blip_t ;


 int time_bits ;

int blip_samples_avail( const blip_t* m )
{
 return (m->offset >> time_bits);
}
