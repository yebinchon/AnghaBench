
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hats; scalar_t__ axes; scalar_t__ buttons; TYPE_2__** iface; } ;
typedef TYPE_1__ joydata_t ;
struct TYPE_5__ {int (* Release ) (TYPE_2__**) ;} ;


 int free (scalar_t__) ;
 int stub1 (TYPE_2__**) ;

__attribute__((used)) static void joy_release_joystick(joydata_t *joy) {
    (*joy->iface)->Release(joy->iface);

    joy->iface = ((void*)0);

    if(joy->buttons)
        free(joy->buttons);

    if(joy->axes)
        free(joy->axes);

    if(joy->hats)
        free(joy->hats);
}
