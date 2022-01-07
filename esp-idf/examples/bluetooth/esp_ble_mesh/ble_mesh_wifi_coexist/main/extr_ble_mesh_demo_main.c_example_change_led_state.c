
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct _led_state {int pin; } ;
struct TYPE_2__ {int disable_fast_prov_timer; int srv_flags; } ;


 int DISABLE_FAST_PROV_START ;
 int DISABLE_FAST_PROV_TIMEOUT ;
 int board_led_operation (int ,int ) ;
 int bt_mesh_atomic_test_and_set_bit (int ,int ) ;
 TYPE_1__ fast_prov_server ;
 int k_delayed_work_submit (int *,int ) ;
 struct _led_state* led_state ;

__attribute__((used)) static void example_change_led_state(uint8_t onoff)
{
    struct _led_state *led = &led_state[1];

    board_led_operation(led->pin, onoff);




    if (!bt_mesh_atomic_test_and_set_bit(fast_prov_server.srv_flags, DISABLE_FAST_PROV_START)) {
        k_delayed_work_submit(&fast_prov_server.disable_fast_prov_timer, DISABLE_FAST_PROV_TIMEOUT);
    }
}
