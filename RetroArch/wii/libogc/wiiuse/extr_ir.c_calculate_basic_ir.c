
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_2__ {struct ir_dot_t* dot; } ;
struct wiimote_t {int orient; TYPE_1__ ir; } ;
struct ir_dot_t {int rx; int ry; int visible; scalar_t__ size; } ;


 void* BIG_ENDIAN_SHORT (int) ;
 int WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_ACC ;
 int interpret_ir_data (TYPE_1__*,int *,int ) ;

void calculate_basic_ir(struct wiimote_t* wm, ubyte* data) {
 struct ir_dot_t* dot = wm->ir.dot;
 int i;

 dot[0].rx = 1023 - (data[0] | ((data[2] & 0x30) << 4));
 dot[0].ry = data[1] | ((data[2] & 0xC0) << 2);

 dot[1].rx = 1023 - (data[3] | ((data[2] & 0x03) << 8));
 dot[1].ry = data[4] | ((data[2] & 0x0C) << 6);

 dot[2].rx = 1023 - (data[5] | ((data[7] & 0x30) << 4));
 dot[2].ry = data[6] | ((data[7] & 0xC0) << 2);

 dot[3].rx = 1023 - (data[8] | ((data[7] & 0x03) << 8));
 dot[3].ry = data[9] | ((data[7] & 0x0C) << 6);


 for (i = 0; i < 4; ++i) {
  dot[i].rx = BIG_ENDIAN_SHORT(dot[i].rx);
  dot[i].ry = BIG_ENDIAN_SHORT(dot[i].ry);

  if (dot[i].ry == 1023)
   dot[i].visible = 0;
  else {
   dot[i].visible = 1;
   dot[i].size = 0;
  }
 }

 interpret_ir_data(&wm->ir,&wm->orient,WIIMOTE_IS_SET(wm, WIIMOTE_STATE_ACC));

}
