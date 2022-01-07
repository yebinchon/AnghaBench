
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ubyte ;
struct TYPE_2__ {struct ir_dot_t* dot; } ;
struct wiimote_t {int orient; TYPE_1__ ir; } ;
struct ir_dot_t {int rx; int ry; int size; int visible; } ;


 void* BIG_ENDIAN_SHORT (int) ;
 int WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_ACC ;
 int interpret_ir_data (TYPE_1__*,int *,int ) ;

void calculate_extended_ir(struct wiimote_t* wm, ubyte* data) {
 struct ir_dot_t* dot = wm->ir.dot;
 int i;

 for (i = 0; i < 4; ++i) {
  dot[i].rx = 1023 - (data[3*i] | ((data[(3*i)+2] & 0x30) << 4));
  dot[i].ry = data[(3*i)+1] | ((data[(3*i)+2] & 0xC0) << 2);

  dot[i].size = data[(3*i)+2];

  dot[i].rx = BIG_ENDIAN_SHORT(dot[i].rx);
  dot[i].ry = BIG_ENDIAN_SHORT(dot[i].ry);

  dot[i].size = dot[i].size&0x0f;


  if (dot[i].ry == 1023)
   dot[i].visible = 0;
  else
   dot[i].visible = 1;
 }

 interpret_ir_data(&wm->ir,&wm->orient,WIIMOTE_IS_SET(wm, WIIMOTE_STATE_ACC));

}
