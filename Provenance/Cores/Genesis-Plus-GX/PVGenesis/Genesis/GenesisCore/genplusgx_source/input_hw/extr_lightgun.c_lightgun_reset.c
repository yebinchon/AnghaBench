
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; } ;
struct TYPE_8__ {TYPE_1__ viewport; } ;
struct TYPE_7__ {int** analog; } ;
struct TYPE_6__ {int State; int Port; } ;


 TYPE_4__ bitmap ;
 TYPE_3__ input ;
 TYPE_2__ lightgun ;

void lightgun_reset(int port)
{
  input.analog[port][0] = bitmap.viewport.w / 2;
  input.analog[port][1] = bitmap.viewport.h / 2;
  lightgun.State = 0x40;
  lightgun.Port = 4;
}
