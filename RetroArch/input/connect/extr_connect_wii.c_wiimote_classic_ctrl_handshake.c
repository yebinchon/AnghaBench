
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int type; } ;
struct connect_wii_wiimote_t {TYPE_1__ exp; } ;
struct connect_wii_classic_ctrl_t {int dummy; } ;


 int EXP_CLASSIC ;
 int memset (struct connect_wii_classic_ctrl_t*,int ,int) ;

__attribute__((used)) static int wiimote_classic_ctrl_handshake(struct connect_wii_wiimote_t* wm,
      struct connect_wii_classic_ctrl_t* cc, uint8_t* data, uint16_t len)
{
   memset(cc, 0, sizeof(*cc));
   wm->exp.type = EXP_CLASSIC;
   return 1;
}
