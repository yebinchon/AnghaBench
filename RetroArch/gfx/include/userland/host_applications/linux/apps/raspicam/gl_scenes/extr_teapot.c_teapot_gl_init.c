
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; TYPE_1__* scene_state; } ;
struct TYPE_8__ {int model; int screen_height; int screen_width; } ;
typedef TYPE_1__ TEAPOT_STATE_T ;
typedef TYPE_2__ RASPITEX_STATE ;


 TYPE_1__* calloc (int,int) ;
 int init_model_proj (TYPE_1__*) ;
 int init_ogl (TYPE_1__*) ;
 int load_wavefront (char const*,int *) ;
 int raspitexutil_gl_init_1_0 (TYPE_2__*) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static int teapot_gl_init(RASPITEX_STATE *raspitex_state)
{
   const char *model_path = "/opt/vc/src/hello_pi/hello_teapot/teapot.obj.dat";
   TEAPOT_STATE_T *state = ((void*)0);
   int rc = 0;


   state = calloc(1, sizeof(TEAPOT_STATE_T));
   raspitex_state->scene_state = state;
   state->screen_width = raspitex_state->width;
   state->screen_height = raspitex_state->height;

   rc = raspitexutil_gl_init_1_0(raspitex_state);
   if (rc != 0)
      goto end;


   init_ogl(state);


   init_model_proj(state);
   state->model = load_wavefront(model_path, ((void*)0));

   if (! state->model)
   {
      vcos_log_error("Failed to load model from %s\n", model_path);
      rc = -1;
   }

end:
   return rc;
}
