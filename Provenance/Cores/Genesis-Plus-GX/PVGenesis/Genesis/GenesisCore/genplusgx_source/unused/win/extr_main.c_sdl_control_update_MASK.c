#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_10__ {int member_0; int member_1; } ;
typedef  TYPE_2__ uint16 ;
struct TYPE_9__ {int changed; } ;
struct TYPE_15__ {TYPE_1__ viewport; } ;
struct TYPE_14__ {int render; int overscan; } ;
struct TYPE_13__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  surf_screen; } ;
struct TYPE_11__ {int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  sample_rate; } ;
typedef  int SDLKey ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t MAX_DEVICES ; 
 int /*<<< orphan*/  NO_DEVICE ; 
#define  SDLK_ESCAPE 140 
#define  SDLK_F10 139 
#define  SDLK_F11 138 
#define  SDLK_F12 137 
#define  SDLK_F2 136 
#define  SDLK_F3 135 
#define  SDLK_F4 134 
#define  SDLK_F5 133 
#define  SDLK_F6 132 
#define  SDLK_F7 131 
#define  SDLK_F8 130 
#define  SDLK_F9 129 
#define  SDLK_TAB 128 
 int SDL_FULLSCREEN ; 
 int SDL_SWSURFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int STATE_SIZE ; 
 int /*<<< orphan*/  VIDEO_HEIGHT ; 
 int /*<<< orphan*/  VIDEO_WIDTH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ bitmap ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int fullscreen ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_6__ input ; 
 size_t joynum ; 
 int log_error ; 
 unsigned char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* reg ; 
 TYPE_5__ sdl_video ; 
 TYPE_4__ snd ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int turbo_mode ; 
 int use_sound ; 
 TYPE_2__ vc_max ; 
 int vdp_pal ; 

__attribute__((used)) static int FUNC17(SDLKey keystate)
{
    switch (keystate)
    {
      case SDLK_TAB:
      {
        FUNC15();
        FUNC16();
        break;
      }

      case SDLK_F2:
      {
        if (fullscreen) fullscreen = 0;
        else fullscreen = SDL_FULLSCREEN;
        sdl_video.surf_screen = FUNC0(VIDEO_WIDTH, VIDEO_HEIGHT, 16,  SDL_SWSURFACE | fullscreen);
        break;
      }

      case SDLK_F3:
      {
        config.render ^=1;
        break;
      }

      case SDLK_F4:
      {
        if (!turbo_mode) use_sound ^= 1;
        break;
      }

      case SDLK_F5:
      {
        log_error ^= 1;
        break;
      }

      case SDLK_F6:
      {
        if (!use_sound) turbo_mode ^=1;
        break;
      }

      case SDLK_F7:
      {
        FILE *f = FUNC6("game.gpz","r+b");
        if (f)
        {
          uint8 buf[STATE_SIZE];
          FUNC7(&buf, STATE_SIZE, 1, f);
          FUNC13(buf);
          FUNC5(f);
        }
        break;
      }

      case SDLK_F8:
      {
        FILE *f = FUNC6("game.gpz","w+b");
        if (f)
        {
          uint8 buf[STATE_SIZE];
          FUNC14(buf);
          FUNC9(&buf, STATE_SIZE, 1, f);
          FUNC5(f);
        }
        break;
      }

      case SDLK_F9:
      {
        vdp_pal ^= 1;

        /* save YM2612 context */
        unsigned char *temp = FUNC11(FUNC2());
        if (temp)
          FUNC12(temp, FUNC1(), FUNC2());

        /* reinitialize all timings */
        FUNC4(snd.sample_rate, snd.frame_rate);
        FUNC15();

        /* restore YM2612 context */
        if (temp)
        {
          FUNC3(temp);
          FUNC8(temp);
        }
        
        /* reinitialize VC max value */
        static const uint16 vc_table[4][2] = 
        {
          /* NTSC, PAL */
          {0xDA , 0xF2},  /* Mode 4 (192 lines) */
          {0xEA , 0x102}, /* Mode 5 (224 lines) */
          {0xDA , 0xF2},  /* Mode 4 (192 lines) */
          {0x106, 0x10A}  /* Mode 5 (240 lines) */
        };
        vc_max = vc_table[(reg[1] >> 2) & 3][vdp_pal];

        /* reinitialize display area */
        bitmap.viewport.changed = 3;
        break;
      }

      case SDLK_F10:
      {
        FUNC10(1);
        FUNC10(0);
        break;
      }

      case SDLK_F11:
      {
        config.overscan ^= 1;
        bitmap.viewport.changed = 3;
        break;
      }

      case SDLK_F12:
      {
        joynum = (joynum + 1) % MAX_DEVICES;
        while (input.dev[joynum] == NO_DEVICE)
        {
          joynum = (joynum + 1) % MAX_DEVICES;
        }
        break;
      }

      case SDLK_ESCAPE:
      {
        return 0;
      }

      default:
        break;
    }

   return 1;
}