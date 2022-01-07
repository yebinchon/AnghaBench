
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pbr_delay; scalar_t__ pbr_length; } ;
typedef TYPE_1__ DCAXllDecoder ;



__attribute__((used)) static void clear_pbr(DCAXllDecoder *s)
{
    s->pbr_length = 0;
    s->pbr_delay = 0;
}
