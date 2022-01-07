
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int w; int h; } ;
struct TYPE_8__ {TYPE_1__ viewport; } ;
struct TYPE_7__ {int invert_mouse; } ;
struct TYPE_6__ {int* dev; int** analog; int * pad; } ;
 int INPUT_A ;
 int INPUT_ACTIVATOR_7L ;
 int INPUT_ACTIVATOR_7U ;
 int INPUT_ACTIVATOR_8L ;
 int INPUT_ACTIVATOR_8U ;
 int INPUT_B ;
 int INPUT_C ;
 int INPUT_DOWN ;
 int INPUT_LEFT ;
 int INPUT_MODE ;
 int INPUT_RIGHT ;
 int INPUT_START ;
 int INPUT_UP ;
 int INPUT_X ;
 int INPUT_Y ;
 int INPUT_Z ;
 size_t SDLK_DOWN ;
 size_t SDLK_KP2 ;
 size_t SDLK_KP4 ;
 size_t SDLK_KP6 ;
 size_t SDLK_KP8 ;
 size_t SDLK_LEFT ;
 size_t SDLK_RIGHT ;
 size_t SDLK_UP ;
 size_t SDLK_a ;
 size_t SDLK_c ;
 size_t SDLK_d ;
 size_t SDLK_f ;
 size_t SDLK_g ;
 size_t SDLK_h ;
 size_t SDLK_j ;
 size_t SDLK_k ;
 size_t SDLK_s ;
 size_t SDLK_v ;
 size_t SDLK_x ;
 size_t SDLK_z ;
 int SDL_BUTTON_LMASK ;
 int SDL_BUTTON_MMASK ;
 int SDL_BUTTON_RMASK ;
 int * SDL_GetKeyState (int *) ;
 int SDL_GetMouseState (int*,int*) ;
 int SDL_GetRelativeMouseState (int*,int*) ;
 scalar_t__ SYSTEM_PICO ;
 int VIDEO_HEIGHT ;
 int VIDEO_WIDTH ;
 TYPE_4__ bitmap ;
 TYPE_3__ config ;
 int free (int *) ;
 TYPE_2__ input ;
 size_t joynum ;
 int pico_current ;
 scalar_t__ system_hw ;

int sdl_input_update(void)
{
  uint8 *keystate = SDL_GetKeyState(((void*)0));


  input.pad[joynum] = 0;

  switch (input.dev[joynum])
  {
    case 132:
    {

      int x,y;
      int state = SDL_GetMouseState(&x,&y);


      input.analog[joynum][0] = (x * bitmap.viewport.w) / VIDEO_WIDTH;
      input.analog[joynum][1] = (y * bitmap.viewport.h) / VIDEO_HEIGHT;


      if(state & SDL_BUTTON_LMASK) input.pad[joynum] |= INPUT_B;
      if(state & SDL_BUTTON_RMASK) input.pad[joynum] |= INPUT_C;
      if(state & SDL_BUTTON_MMASK) input.pad[joynum] |= INPUT_A;
      if(keystate[SDLK_f]) input.pad[joynum] |= INPUT_START;

      break;
    }

    case 130:
    {

      int x;
      int state = SDL_GetMouseState(&x, ((void*)0));


      input.analog[joynum][0] = x * 256 /VIDEO_WIDTH;


      if(state & SDL_BUTTON_LMASK) input.pad[joynum] |= INPUT_B;

      break;
    }

    case 129:
    {

      int x,y;
      int state = SDL_GetRelativeMouseState(&x,&y);


      input.analog[joynum][0] = (unsigned char)(-x & 0xFF);
      input.analog[joynum][1] = (unsigned char)(-y & 0xFF);


      if(state & SDL_BUTTON_LMASK) input.pad[joynum] |= INPUT_B;
      if(state & SDL_BUTTON_RMASK) input.pad[joynum] |= INPUT_C;

      break;
    }

    case 131:
    {

      int x,y;
      int state = SDL_GetRelativeMouseState(&x,&y);


      input.analog[joynum][0] = x * 2;
      input.analog[joynum][1] = y * 2;


      if (!config.invert_mouse)
        input.analog[joynum][1] = 0 - input.analog[joynum][1];


      if(state & SDL_BUTTON_LMASK) input.pad[joynum] |= INPUT_B;
      if(state & SDL_BUTTON_RMASK) input.pad[joynum] |= INPUT_C;
      if(state & SDL_BUTTON_MMASK) input.pad[joynum] |= INPUT_A;
      if(keystate[SDLK_f]) input.pad[joynum] |= INPUT_START;

      break;
    }

    case 128:
    {

      if(keystate[SDLK_a]) input.pad[joynum] |= INPUT_START;
      if(keystate[SDLK_s]) input.pad[joynum] |= INPUT_A;
      if(keystate[SDLK_d]) input.pad[joynum] |= INPUT_C;
      if(keystate[SDLK_f]) input.pad[joynum] |= INPUT_Y;
      if(keystate[SDLK_z]) input.pad[joynum] |= INPUT_B;
      if(keystate[SDLK_x]) input.pad[joynum] |= INPUT_X;
      if(keystate[SDLK_c]) input.pad[joynum] |= INPUT_MODE;
      if(keystate[SDLK_v]) input.pad[joynum] |= INPUT_Z;


      if(keystate[SDLK_UP]) input.analog[joynum][1]-=2;
      else if(keystate[SDLK_DOWN]) input.analog[joynum][1]+=2;
      else input.analog[joynum][1] = 128;
      if(keystate[SDLK_LEFT]) input.analog[joynum][0]-=2;
      else if(keystate[SDLK_RIGHT]) input.analog[joynum][0]+=2;
      else input.analog[joynum][0] = 128;


      if(keystate[SDLK_KP8]) input.analog[joynum+1][0]-=2;
      else if(keystate[SDLK_KP2]) input.analog[joynum+1][0]+=2;
      else if(keystate[SDLK_KP4]) input.analog[joynum+1][0]-=2;
      else if(keystate[SDLK_KP6]) input.analog[joynum+1][0]+=2;
      else input.analog[joynum+1][0] = 128;


      if (input.analog[joynum][0] > 0xFF) input.analog[joynum][0] = 0xFF;
      else if (input.analog[joynum][0] < 0) input.analog[joynum][0] = 0;
      if (input.analog[joynum][1] > 0xFF) input.analog[joynum][1] = 0xFF;
      else if (input.analog[joynum][1] < 0) input.analog[joynum][1] = 0;
      if (input.analog[joynum+1][0] > 0xFF) input.analog[joynum+1][0] = 0xFF;
      else if (input.analog[joynum+1][0] < 0) input.analog[joynum+1][0] = 0;
      if (input.analog[joynum+1][1] > 0xFF) input.analog[joynum+1][1] = 0xFF;
      else if (input.analog[joynum+1][1] < 0) input.analog[joynum+1][1] = 0;

      break;
    }

    case 133:
    {
      if(keystate[SDLK_g]) input.pad[joynum] |= INPUT_ACTIVATOR_7L;
      if(keystate[SDLK_h]) input.pad[joynum] |= INPUT_ACTIVATOR_7U;
      if(keystate[SDLK_j]) input.pad[joynum] |= INPUT_ACTIVATOR_8L;
      if(keystate[SDLK_k]) input.pad[joynum] |= INPUT_ACTIVATOR_8U;
    }

    default:
    {
      if(keystate[SDLK_a]) input.pad[joynum] |= INPUT_A;
      if(keystate[SDLK_s]) input.pad[joynum] |= INPUT_B;
      if(keystate[SDLK_d]) input.pad[joynum] |= INPUT_C;
      if(keystate[SDLK_f]) input.pad[joynum] |= INPUT_START;
      if(keystate[SDLK_z]) input.pad[joynum] |= INPUT_X;
      if(keystate[SDLK_x]) input.pad[joynum] |= INPUT_Y;
      if(keystate[SDLK_c]) input.pad[joynum] |= INPUT_Z;
      if(keystate[SDLK_v]) input.pad[joynum] |= INPUT_MODE;

      if(keystate[SDLK_UP]) input.pad[joynum] |= INPUT_UP;
      else
      if(keystate[SDLK_DOWN]) input.pad[joynum] |= INPUT_DOWN;
      if(keystate[SDLK_LEFT]) input.pad[joynum] |= INPUT_LEFT;
      else
      if(keystate[SDLK_RIGHT]) input.pad[joynum] |= INPUT_RIGHT;

      break;
    }
  }

  if (system_hw == SYSTEM_PICO)
  {

    int x,y;
    int state = SDL_GetMouseState(&x,&y);


    input.analog[0][0] = 0x3c + (x * (0x17c-0x03c+1)) / VIDEO_WIDTH;
    input.analog[0][1] = 0x1fc + (y * (0x2f7-0x1fc+1)) / VIDEO_HEIGHT;


    if(state & SDL_BUTTON_MMASK) pico_current++;
    if(state & SDL_BUTTON_RMASK) input.pad[joynum] |= INPUT_B;
    if(state & SDL_BUTTON_LMASK) input.pad[joynum] |= INPUT_A;
  }

  free (keystate);
  return 1;
}
