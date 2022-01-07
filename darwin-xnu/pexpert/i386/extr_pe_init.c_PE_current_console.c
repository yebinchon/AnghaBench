
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int video; } ;
typedef int PE_Video ;


 TYPE_1__ PE_state ;

int PE_current_console( PE_Video * info )
{
    *info = PE_state.video;

    return (0);
}
