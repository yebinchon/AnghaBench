
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ seek_time; } ;


 TYPE_1__ private_ogg ;

void SetTimeOgg(s32 time_pos)
{
  if (time_pos >= 0)
    private_ogg.seek_time = time_pos;
}
