
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int model; } ;


 int bcm_host_init () ;
 int exit_func () ;
 int init_model_proj (TYPE_1__*) ;
 int init_ogl (TYPE_1__*) ;
 int init_textures (TYPE_1__*) ;
 int load_wavefront (char*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*) ;
 int redraw_scene (TYPE_1__*) ;
 TYPE_1__* state ;
 int terminate ;
 int update_model (TYPE_1__*) ;

int main ()
{
   bcm_host_init();
   printf("Note: ensure you have sufficient gpu_mem configured\n");


   memset( state, 0, sizeof( *state ) );


   init_ogl(state);


   init_model_proj(state);


   init_textures(state);


   state->model = load_wavefront("/opt/vc/src/hello_pi/hello_teapot/teapot.obj.dat", ((void*)0));

   while (!terminate)
   {
      update_model(state);
      redraw_scene(state);
   }
   exit_func();
   return 0;
}
