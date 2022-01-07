
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ button_handle_t ;


 int BUTTON_ACTIVE_LEVEL ;
 int BUTTON_CB_RELEASE ;
 int BUTTON_IO_NUM ;
 int button_tap_cb ;
 scalar_t__ iot_button_create (int ,int ) ;
 int iot_button_set_evt_cb (scalar_t__,int ,int ,char*) ;

__attribute__((used)) static void board_button_init(void)
{
    button_handle_t btn_handle = iot_button_create(BUTTON_IO_NUM, BUTTON_ACTIVE_LEVEL);
    if (btn_handle) {
        iot_button_set_evt_cb(btn_handle, BUTTON_CB_RELEASE, button_tap_cb, "RELEASE");
    }
}
