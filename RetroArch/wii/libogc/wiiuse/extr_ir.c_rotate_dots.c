
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdot_t {float x; float y; } ;


 int DEGREE_TO_RAD (float) ;
 float cos (int ) ;
 float sin (int ) ;

__attribute__((used)) static void rotate_dots(struct fdot_t* in, struct fdot_t *out, int count, float ang) {
 float s, c;
 int i;

 if (ang == 0) {
  for (i = 0; i < count; ++i) {
   out[i].x = in[i].x;
   out[i].y = in[i].y;
  }
  return;
 }

 s = sin(DEGREE_TO_RAD(ang));
 c = cos(DEGREE_TO_RAD(ang));






 for (i = 0; i < count; ++i) {
  out[i].x = (c * in[i].x) + (-s * in[i].y);
  out[i].y = (s * in[i].x) + (c * in[i].y);
 }
}
