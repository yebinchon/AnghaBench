
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int btns; } ;
struct TYPE_5__ {TYPE_1__ classic; } ;
struct TYPE_6__ {TYPE_2__ cc; } ;
struct connect_wii_wiimote_t {int btns; TYPE_3__ exp; } ;
typedef int input_bits_t ;


 int BITS_COPY32_PTR (int *,int) ;

__attribute__((used)) static void hidpad_wii_get_buttons(void *data, input_bits_t *state)
{
 struct connect_wii_wiimote_t* device = (struct connect_wii_wiimote_t*)data;
 if ( device )
 {

  uint32_t b = device->btns | (device->exp.cc.classic.btns << 16);
  BITS_COPY32_PTR(state, b);
 }
}
