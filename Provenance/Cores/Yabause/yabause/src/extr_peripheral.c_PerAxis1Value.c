
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__* analogbits; } ;
typedef TYPE_1__ PerAnalog_struct ;



void PerAxis1Value(PerAnalog_struct * analog, u32 val)
{
   analog->analogbits[2] = (u8)val;
}
