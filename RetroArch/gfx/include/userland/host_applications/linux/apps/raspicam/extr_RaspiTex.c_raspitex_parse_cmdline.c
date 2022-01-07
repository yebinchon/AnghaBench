
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_win_defined; int scene_id; int height; int width; int y; int x; } ;
typedef TYPE_1__ RASPITEX_STATE ;




 int DEFAULT_HEIGHT ;
 int DEFAULT_WIDTH ;
 int RASPITEX_SCENE_MIRROR ;
 int RASPITEX_SCENE_SOBEL ;
 int RASPITEX_SCENE_SQUARE ;
 int RASPITEX_SCENE_TEAPOT ;
 int RASPITEX_SCENE_VCSM_SQUARE ;
 int RASPITEX_SCENE_YUV ;
 int cmdline_commands ;
 int cmdline_commands_size ;
 int raspicli_get_command_id (int ,int ,char const*,int*) ;
 int sscanf (char const*,char*,int *,int *,int *,int *) ;
 int strcmp (char const*,char*) ;
 int vcos_log_error (char*,char const*) ;

int raspitex_parse_cmdline(RASPITEX_STATE *state,
                           const char *arg1, const char *arg2)
{
   int command_id, used = 0, num_parameters;

   if (!arg1)
      return 0;

   command_id = raspicli_get_command_id(cmdline_commands,
                                        cmdline_commands_size, arg1, &num_parameters);


   if (command_id==-1 || (command_id != -1 && num_parameters > 0 && arg2 == ((void*)0)))
      return 0;

   switch (command_id)
   {
   case 128:
   {
      int tmp;
      tmp = sscanf(arg2, "%d,%d,%d,%d",
                   &state->x, &state->y, &state->width, &state->height);
      if (tmp != 4)
      {

         state->x = state->y = 0;
         state->width = DEFAULT_WIDTH;
         state->height = DEFAULT_HEIGHT;
      }
      else
      {
         state->gl_win_defined = 1;
      }

      used = 2;
      break;
   }

   case 129:
   {
      if (strcmp(arg2, "square") == 0)
         state->scene_id = RASPITEX_SCENE_SQUARE;
      else if (strcmp(arg2, "teapot") == 0)
         state->scene_id = RASPITEX_SCENE_TEAPOT;
      else if (strcmp(arg2, "mirror") == 0)
         state->scene_id = RASPITEX_SCENE_MIRROR;
      else if (strcmp(arg2, "yuv") == 0)
         state->scene_id = RASPITEX_SCENE_YUV;
      else if (strcmp(arg2, "sobel") == 0)
         state->scene_id = RASPITEX_SCENE_SOBEL;
      else if (strcmp(arg2, "vcsm_square") == 0)
         state->scene_id = RASPITEX_SCENE_VCSM_SQUARE;
      else
         vcos_log_error("Unknown scene %s", arg2);

      used = 2;
      break;
   }
   }
   return used;
}
