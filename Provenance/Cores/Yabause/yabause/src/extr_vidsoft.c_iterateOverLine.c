
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;


 int INT_MAX ;
 int abs (int) ;

__attribute__((used)) static int iterateOverLine(int x1, int y1, int x2, int y2, int greedy, void *data,
   int(*line_callback)(int x, int y, int i, void *data, Vdp1* regs, vdp1cmd_struct * cmd, u8* ram, u8* back_framebuffer), Vdp1* regs, vdp1cmd_struct * cmd, u8 * ram, u8* back_framebuffer) {
 int i, a, ax, ay, dx, dy;

 a = i = 0;
 dx = x2 - x1;
 dy = y2 - y1;
 ax = (dx >= 0) ? 1 : -1;
 ay = (dy >= 0) ? 1 : -1;



 if(abs(dx) > 999 || abs(dy) > 999)
  return INT_MAX;

 if (abs(dx) > abs(dy)) {
  if (ax != ay) dx = -dx;

  for (; x1 != x2; x1 += ax, i++) {
         if (line_callback && line_callback(x1, y1, i, data, regs, cmd, ram, back_framebuffer) != 0) return i + 1;

   a += dy;
   if (abs(a) >= abs(dx)) {
    a -= dx;
    y1 += ay;


    if (greedy) {
     i ++;
     if (ax == ay) {
      if (line_callback &&
                     line_callback(x1 + ax, y1 - ay, i, data, regs, cmd, ram, back_framebuffer) != 0)
       return i + 1;
     } else {
      if (line_callback &&
                     line_callback(x1, y1, i, data, regs, cmd, ram, back_framebuffer) != 0)
       return i + 1;
     }
    }
   }
  }


  if ( 1) {
         if (line_callback) line_callback(x2, y2, i, data, regs, cmd, ram, back_framebuffer);
   i ++;
  }
 } else {
  if (ax != ay) dy = -dy;

  for (; y1 != y2; y1 += ay, i++) {
         if (line_callback && line_callback(x1, y1, i, data, regs, cmd, ram, back_framebuffer) != 0) return i + 1;

   a += dx;
   if (abs(a) >= abs(dy)) {
    a -= dy;
    x1 += ax;

    if (greedy) {
     i ++;
     if (ay == ax) {
      if (line_callback &&
                     line_callback(x1, y1, i, data, regs, cmd, ram, back_framebuffer) != 0)
       return i + 1;
     } else {
      if (line_callback &&
                     line_callback(x1 - ax, y1 + ay, i, data, regs, cmd, ram, back_framebuffer) != 0)
       return i + 1;
     }
    }
   }
  }

  if ( 1) {
         if (line_callback) line_callback(x2, y2, i, data, regs, cmd, ram, back_framebuffer);
   i ++;
  }
 }

 return i;
}
