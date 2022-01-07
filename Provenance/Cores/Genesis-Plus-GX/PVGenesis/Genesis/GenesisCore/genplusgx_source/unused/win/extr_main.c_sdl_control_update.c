
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_10__ {int member_0; int member_1; } ;
typedef TYPE_2__ uint16 ;
struct TYPE_9__ {int changed; } ;
struct TYPE_15__ {TYPE_1__ viewport; } ;
struct TYPE_14__ {int render; int overscan; } ;
struct TYPE_13__ {int * dev; } ;
struct TYPE_12__ {int surf_screen; } ;
struct TYPE_11__ {int frame_rate; int sample_rate; } ;
typedef int SDLKey ;
typedef int FILE ;


 size_t MAX_DEVICES ;
 int NO_DEVICE ;
 int SDL_FULLSCREEN ;
 int SDL_SWSURFACE ;
 int SDL_SetVideoMode (int ,int ,int,int) ;
 int STATE_SIZE ;
 int VIDEO_HEIGHT ;
 int VIDEO_WIDTH ;
 int YM2612GetContextPtr () ;
 int YM2612GetContextSize () ;
 int YM2612Restore (unsigned char*) ;
 int audio_init (int ,int ) ;
 TYPE_8__ bitmap ;
 TYPE_7__ config ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int **,int,int,int *) ;
 int free (unsigned char*) ;
 int fullscreen ;
 int fwrite (int **,int,int,int *) ;
 int gen_softreset (int) ;
 TYPE_6__ input ;
 size_t joynum ;
 int log_error ;
 unsigned char* malloc (int ) ;
 int memcpy (unsigned char*,int ,int ) ;
 int* reg ;
 TYPE_5__ sdl_video ;
 TYPE_4__ snd ;
 int state_load (int *) ;
 int state_save (int *) ;
 int system_init () ;
 int system_reset () ;
 int turbo_mode ;
 int use_sound ;
 TYPE_2__ vc_max ;
 int vdp_pal ;

__attribute__((used)) static int sdl_control_update(SDLKey keystate)
{
    switch (keystate)
    {
      case 128:
      {
        system_init();
        system_reset();
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
        config.render ^=1;
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
        if (!use_sound) turbo_mode ^=1;
        break;
      }

      case 131:
      {
        FILE *f = fopen("game.gpz","r+b");
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
        FILE *f = fopen("game.gpz","w+b");
        if (f)
        {
          uint8 buf[STATE_SIZE];
          state_save(buf);
          fwrite(&buf, STATE_SIZE, 1, f);
          fclose(f);
        }
        break;
      }

      case 129:
      {
        vdp_pal ^= 1;


        unsigned char *temp = malloc(YM2612GetContextSize());
        if (temp)
          memcpy(temp, YM2612GetContextPtr(), YM2612GetContextSize());


        audio_init(snd.sample_rate, snd.frame_rate);
        system_init();


        if (temp)
        {
          YM2612Restore(temp);
          free(temp);
        }


        static const uint16 vc_table[4][2] =
        {

          {0xDA , 0xF2},
          {0xEA , 0x102},
          {0xDA , 0xF2},
          {0x106, 0x10A}
        };
        vc_max = vc_table[(reg[1] >> 2) & 3][vdp_pal];


        bitmap.viewport.changed = 3;
        break;
      }

      case 139:
      {
        gen_softreset(1);
        gen_softreset(0);
        break;
      }

      case 138:
      {
        config.overscan ^= 1;
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

      case 140:
      {
        return 0;
      }

      default:
        break;
    }

   return 1;
}
