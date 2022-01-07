
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int screen_width; int screen_height; } ;
typedef int GLfloat ;


 int bcm_host_init () ;
 int draw_mandelbrot_to_texture (TYPE_1__*,int,int,double) ;
 int draw_triangles (TYPE_1__*,int,int,double,int,int) ;
 int get_mouse (TYPE_1__*,int*,int*) ;
 int init_ogl (TYPE_1__*) ;
 int init_shaders (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* state ;

int main ()
{
   int terminate = 0;
   GLfloat cx, cy;
   bcm_host_init();


   memset( state, 0, sizeof( *state ) );


   init_ogl(state);
   init_shaders(state);
   cx = state->screen_width/2;
   cy = state->screen_height/2;

   draw_mandelbrot_to_texture(state, cx, cy, 0.003);
   while (!terminate)
   {
      int x, y, b;
      b = get_mouse(state, &x, &y);
      if (b) break;
      draw_triangles(state, cx, cy, 0.003, x, y);
   }
   return 0;
}
