
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * input_joypad_map; } ;
struct TYPE_12__ {float audio_max_timing_skew; float video_refresh_rate; } ;
struct TYPE_11__ {int audio_rate_control; } ;
struct TYPE_16__ {TYPE_5__ uints; TYPE_2__ floats; TYPE_1__ bools; } ;
typedef TYPE_6__ settings_t ;
struct TYPE_13__ {double* fraction; int * integer; } ;
struct TYPE_14__ {TYPE_3__ target; } ;
struct TYPE_17__ {int enum_idx; TYPE_4__ value; } ;
typedef TYPE_7__ rarch_setting_t ;


 int AUDIO_ACTION_RATE_CONTROL_DELTA ;
 int MSG_UNKNOWN ;
 double* audio_get_float_ptr (int ) ;
 int audio_set_float (int ,float) ;
 TYPE_6__* config_get_ptr () ;
 int configuration_set_bool (TYPE_6__*,int ,int) ;

void general_read_handler(rarch_setting_t *setting)
{
   settings_t *settings = config_get_ptr();

   if (!setting || setting->enum_idx == MSG_UNKNOWN)
      return;

   switch (setting->enum_idx)
   {
      case 134:
         *setting->value.target.fraction = *(audio_get_float_ptr(AUDIO_ACTION_RATE_CONTROL_DELTA));
         if (*setting->value.target.fraction < 0.0005)
         {
            configuration_set_bool(settings, settings->bools.audio_rate_control, 0);
            audio_set_float(AUDIO_ACTION_RATE_CONTROL_DELTA, 0.0f);
         }
         else
         {
            configuration_set_bool(settings, settings->bools.audio_rate_control, 1);
            audio_set_float(AUDIO_ACTION_RATE_CONTROL_DELTA, *setting->value.target.fraction);
         }
         break;
      case 135:
         *setting->value.target.fraction = settings->floats.audio_max_timing_skew;
         break;
      case 128:
         *setting->value.target.fraction = settings->floats.video_refresh_rate;
         break;
      case 133:
         *setting->value.target.integer = settings->uints.input_joypad_map[0];
         break;
      case 132:
         *setting->value.target.integer = settings->uints.input_joypad_map[1];
         break;
      case 131:
         *setting->value.target.integer = settings->uints.input_joypad_map[2];
         break;
      case 130:
         *setting->value.target.integer = settings->uints.input_joypad_map[3];
         break;
      case 129:
         *setting->value.target.integer = settings->uints.input_joypad_map[4];
         break;
      default:
         break;
   }
}
