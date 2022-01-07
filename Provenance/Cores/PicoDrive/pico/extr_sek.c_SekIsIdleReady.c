
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frame_count; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 scalar_t__ idledet_start_frame ;

int SekIsIdleReady(void)
{
 return (Pico.m.frame_count >= idledet_start_frame);
}
