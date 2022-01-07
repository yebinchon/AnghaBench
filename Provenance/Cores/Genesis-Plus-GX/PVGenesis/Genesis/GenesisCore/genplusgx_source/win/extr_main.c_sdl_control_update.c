
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_8__ {int x; int changed; int h; } ;
struct TYPE_14__ {TYPE_1__ viewport; } ;
struct TYPE_13__ {int bios; int region_detect; int overscan; int gg_extra; } ;
struct TYPE_12__ {int * dev; } ;
struct TYPE_11__ {int ticks; } ;
struct TYPE_10__ {int surf_screen; } ;
struct TYPE_9__ {int sample_rate; } ;
typedef int SDLKey ;
typedef int FILE ;


 size_t MAX_DEVICES ;
 int NO_DEVICE ;
 int SDL_FULLSCREEN ;
 int SDL_SWSURFACE ;
 int SDL_SetVideoMode (int ,int ,int,int) ;
 int SDL_ShowCursor (int) ;
 int STATE_SIZE ;
 int SYSTEM_GG ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 int SYSTEM_SMS ;
 int VIDEO_HEIGHT ;
 int VIDEO_WIDTH ;
 int audio_init (int ,int ) ;
 TYPE_7__ bitmap ;
 TYPE_6__ config ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int **,int,int,int *) ;
 int fullscreen ;
 int fwrite (int **,int,int,int *) ;
 int gen_reset (int ) ;
 int get_region (int ) ;
 TYPE_5__ input ;
 int* io_reg ;
 size_t joynum ;
 int lines_per_frame ;
 int log_error ;
 int region_code ;
 TYPE_4__ sdl_sync ;
 TYPE_3__ sdl_video ;
 TYPE_2__ snd ;
 int state_load (int *) ;
 int state_save (int *) ;
 int status ;
 int system_hw ;
 int system_init () ;
 int system_reset () ;
 int turbo_mode ;
 int use_sound ;
 int vc_max ;
 int ** vc_table ;
 size_t vdp_pal ;

__attribute__((used)) static int sdl_control_update(SDLKey keystate)
{
    switch (keystate)
    {
      case 128:
      {
        system_reset();
        break;
      }

      case 140:
      {
        if (SDL_ShowCursor(-1)) SDL_ShowCursor(0);
        else SDL_ShowCursor(1);
        break;
      }

      case 136:
      {
        if (fullscreen) fullscreen = 0;
        else fullscreen = SDL_FULLSCREEN;
        sdl_video.surf_screen = SDL_SetVideoMode(VIDEO_WIDTH, VIDEO_HEIGHT, 16, SDL_SWSURFACE | fullscreen);
        break;
      }

      case 135:
      {
        if (config.bios == 0) config.bios = 3;
        else if (config.bios == 3) config.bios = 1;
        break;
      }

      case 134:
      {
        if (!turbo_mode) use_sound ^= 1;
        break;
      }

      case 133:
      {
        log_error ^= 1;
        break;
      }

      case 132:
      {
        if (!use_sound)
        {
          turbo_mode ^=1;
          sdl_sync.ticks = 0;
        }
        break;
      }

      case 131:
      {
        FILE *f = fopen("game.gp0","rb");
        if (f)
        {
          uint8 buf[STATE_SIZE];
          fread(&buf, STATE_SIZE, 1, f);
          state_load(buf);
          fclose(f);
        }
        break;
      }

      case 130:
      {
        FILE *f = fopen("game.gp0","wb");
        if (f)
        {
          uint8 buf[STATE_SIZE];
          int len = state_save(buf);
          fwrite(&buf, len, 1, f);
          fclose(f);
        }
        break;
      }

      case 129:
      {
        config.region_detect = (config.region_detect + 1) % 5;
        get_region(0);


        audio_init(snd.sample_rate, 0);


        if ((system_hw == SYSTEM_MCD) || ((system_hw & SYSTEM_SMS) && (config.bios & 1)))
        {
          system_init();
          system_reset();
        }
        else
        {

          if (system_hw == SYSTEM_MD)
          {
            io_reg[0x00] = 0x20 | region_code | (config.bios & 1);
          }
          else
          {
            io_reg[0x00] = 0x80 | (region_code >> 1);
          }


          if (vdp_pal)
          {
            status |= 1;
            lines_per_frame = 313;
          }
          else
          {
            status &= ~1;
            lines_per_frame = 262;
          }


          switch (bitmap.viewport.h)
          {
            case 192:
              vc_max = vc_table[0][vdp_pal];
              break;
            case 224:
              vc_max = vc_table[1][vdp_pal];
              break;
            case 240:
              vc_max = vc_table[3][vdp_pal];
              break;
          }
        }
        break;
      }

      case 139:
      {
        gen_reset(0);
        break;
      }

      case 138:
      {
        config.overscan = (config.overscan + 1) & 3;
        if ((system_hw == SYSTEM_GG) && !config.gg_extra)
        {
          bitmap.viewport.x = (config.overscan & 2) ? 14 : -48;
        }
        else
        {
          bitmap.viewport.x = (config.overscan & 2) * 7;
        }
        bitmap.viewport.changed = 3;
        break;
      }

      case 137:
      {
        joynum = (joynum + 1) % MAX_DEVICES;
        while (input.dev[joynum] == NO_DEVICE)
        {
          joynum = (joynum + 1) % MAX_DEVICES;
        }
        break;
      }

      case 141:
      {
        return 0;
      }

      default:
        break;
    }

   return 1;
}
