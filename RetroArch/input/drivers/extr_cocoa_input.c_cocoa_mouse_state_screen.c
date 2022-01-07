
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef float int16_t ;
struct TYPE_4__ {float window_pos_x; float window_pos_y; } ;
typedef TYPE_1__ cocoa_input_data_t ;




 float cocoa_mouse_state (TYPE_1__*,unsigned int) ;
 float get_backing_scale_factor () ;

__attribute__((used)) static int16_t cocoa_mouse_state_screen(cocoa_input_data_t *apple,
                                        unsigned id)
{
   int16_t val;

   float backing_scale_factor = get_backing_scale_factor();


    switch (id)
    {
        case 129:
            val = apple->window_pos_x;
            break;
        case 128:
            val = apple->window_pos_y;
            break;
        default:
            return cocoa_mouse_state(apple, id);
    }


    val *= backing_scale_factor;

    return val;
}
