
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int axes_count; int buttons_count; int hats_count; TYPE_6__* hats; TYPE_2__* buttons; TYPE_1__* axes; } ;
typedef TYPE_3__ joydata_t ;
struct TYPE_12__ {int min; int max; } ;
struct TYPE_10__ {int min; } ;
struct TYPE_9__ {int min; int max; } ;


 int AXIS_NEGATIVE_VALUE ;
 int AXIS_POSITIVE_VALUE ;
 int HAT_VALUE ;
 int MIDDLE (int,int) ;
 int joy_read_axis (TYPE_3__*,int) ;
 int joy_read_button (TYPE_3__*,int) ;
 int joy_read_element (TYPE_3__*,TYPE_6__*) ;
 int joycount ;
 TYPE_3__** joys ;

u32 PERMacJoyScan(u32 flags) {
    int i, j, k, data;
    joydata_t *joy;


    for(i = 0; i < joycount; ++i) {
        joy = joys[i];

        if(!joy) {
            continue;
        }


        for(j = 0; j < joy->axes_count; ++j) {
            int midpoint = MIDDLE(joy->axes[j].min, joy->axes[j].max);

            data = joy_read_axis(joy, j);

            if(joy->axes[j].max > 0 &&
               data > MIDDLE(midpoint, joy->axes[j].max)) {
                return ((i << 24) | AXIS_POSITIVE_VALUE | j);
            }
            else if(joy->axes[j].min < 0 &&
                    data < MIDDLE(midpoint, joy->axes[j].min)) {
                return ((i << 24) | AXIS_NEGATIVE_VALUE | j);
            }
        }


        for(j = 1; j <= joy->buttons_count; ++j) {
            data = joy_read_button(joy, j);

            if(data > joy->buttons[j].min) {
                return ((i << 24) | j);
            }
        }


        for(j = 0; j < joy->hats_count; ++j) {
            data = joy_read_element(joy, joy->hats + j);

            for(k = joy->hats[j].min; k < joy->hats[j].max; ++k) {
                if(data == k) {
                    return ((i << 24) | HAT_VALUE | (k << 8) | j);
                }
            }
        }
    }

    return 0;
}
