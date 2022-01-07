
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int blip_t ;
struct TYPE_2__ {int sample_rate; } ;


 int ** blip ;
 int blip_set_rates (int *,int,int ) ;
 TYPE_1__ snd ;

void cdd_init(blip_t* left, blip_t* right)
{


  blip[0] = left;
  blip[1] = right;
  blip_set_rates(left, 44100, snd.sample_rate);
  blip_set_rates(right, 44100, snd.sample_rate);
}
