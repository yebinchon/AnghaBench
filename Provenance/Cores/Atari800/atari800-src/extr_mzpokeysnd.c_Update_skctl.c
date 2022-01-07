
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char skctl; } ;
typedef TYPE_1__ PokeyState ;



__attribute__((used)) static void Update_skctl(PokeyState* ps, unsigned char val)
{
    ps->skctl = val;
}
