
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct android_app {char* current_ime; } ;
typedef int name_buf ;
typedef int device_name ;
typedef int device_model ;
struct TYPE_6__ {scalar_t__ pads_connected; TYPE_1__* pad_states; } ;
typedef TYPE_2__ android_input_t ;
struct TYPE_7__ {int ident; } ;
struct TYPE_5__ {char* name; int id; int port; } ;


 int AINPUT_SOURCE_KEYBOARD ;
 int DEFAULT_MAX_PADS ;
 size_t MAX_NUM_KEYBOARDS ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,char*,...) ;
 TYPE_4__ android_joypad ;
 int engine_lookup_name (char*,int*,int*,int,int) ;
 int frontend_android_get_name (char*,int) ;
 int input_autoconfigure_connect (char*,int *,int ,int,int,int) ;
 int* kbd_id ;
 size_t kbd_num ;
 int pad_id1 ;
 int pad_id2 ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void handle_hotplug(android_input_t *android,
      struct android_app *android_app, int *port, int id,
      int source)
{
   char device_name[256];
   char device_model[256];
   char name_buf[256];
   int vendorId = 0;
   int productId = 0;

   device_name[0] = device_model[0] = name_buf[0] = '\0';

   frontend_android_get_name(device_model, sizeof(device_model));

   RARCH_LOG("Device model: (%s).\n", device_model);

   if (*port > DEFAULT_MAX_PADS)
   {
      RARCH_ERR("Max number of pads reached.\n");
      return;
   }

   if (!engine_lookup_name(device_name, &vendorId,
            &productId, sizeof(device_name), id))
   {
      RARCH_ERR("Could not look up device name or IDs.\n");
      return;
   }
   if (strstr(device_model, "SHIELD Android TV") && (
      strstr(device_name, "Virtual") ||
      strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.0")))
   {

      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {





         if (strstr(android->pad_states[0].name,"SHIELD Remote") ||
            strstr(android->pad_states[0].name,"SHIELD Virtual Controller"))
         {
            pad_id1 = -1;
            pad_id2 = -1;
            android->pads_connected = 0;
            *port = 0;
            strlcpy(name_buf, device_name, sizeof(name_buf));
         }



         if (strstr(device_name, "Virtual") && android->pads_connected==0)
            strlcpy (name_buf, "SHIELD Virtual Controller", sizeof(name_buf));
         else
            strlcpy (name_buf, "NVIDIA SHIELD Controller", sizeof(name_buf));




         if (strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.0")
               && android->pads_connected==0)
            pad_id1 = id;
         else if (strstr(device_name, "Virtual") && pad_id1 != -1)
         {
            id = pad_id1;
            return;
         }
      }
   }

   else if (strstr(device_model, "SHIELD") && (
      strstr(device_name, "Virtual") || strstr(device_name, "gpio") ||
      strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.01") ||
      strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.02")))
   {

      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {
         if ( pad_id1 < 0 )
            pad_id1 = id;
         else
            pad_id2 = id;

         if ( pad_id2 > 0)
            return;
         strlcpy (name_buf, "NVIDIA SHIELD Portable", sizeof(name_buf));
      }
   }

   else if (strstr(device_model, "SHIELD") && (
      strstr(device_name, "Virtual") || strstr(device_name, "gpio") ||
      strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.03")))
   {

      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {
         if (strstr(device_name, "NVIDIA Corporation NVIDIA Controller v01.03")
             && android->pads_connected==0)
            pad_id1 = id;
         else if (strstr(device_name, "Virtual") || strstr(device_name, "gpio"))
         {
            id = pad_id1;
            return;
         }
         strlcpy (name_buf, "NVIDIA SHIELD Gamepad", sizeof(name_buf));
      }
   }






   else if (strstr(device_name, "NVIDIA"))
      strlcpy (name_buf, "Android Gamepad", sizeof(name_buf));





   else if (strstr(device_model, "XD") && (
      strstr(device_name, "Virtual") || strstr(device_name, "rk29-keypad") ||
      strstr(device_name,"Playstation3") || strstr(device_name,"XBOX")))
   {

      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {
         if ( pad_id1 < 0 )
            pad_id1 = id;
         else
            pad_id2 = id;

         if ( pad_id2 > 0)
            return;

         strlcpy (name_buf, "GPD XD", sizeof(name_buf));
         *port = 0;
      }
   }





   else if(
            (
               strstr(device_model, "R800x") ||
               strstr(device_model, "R800at") ||
               strstr(device_model, "R800i") ||
               strstr(device_model, "R800a") ||
               strstr(device_model, "R800") ||
               strstr(device_model, "Xperia Play") ||
               strstr(device_model, "Play") ||
               strstr(device_model, "SO-01D")
            ) && (
               strstr(device_name, "keypad-game-zeus") ||
               strstr(device_name, "keypad-zeus") ||
               strstr(device_name, "Android Gamepad")
            )
         )
   {

      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {
         if ( pad_id1 < 0 )
            pad_id1 = id;
         else
            pad_id2 = id;

         if ( pad_id2 > 0)
            return;

         strlcpy (name_buf, "XPERIA Play", sizeof(name_buf));
         *port = 0;
      }
   }





   else if (strstr(device_model, "ARCHOS GAMEPAD") && (
      strstr(device_name, "joy_key") || strstr(device_name, "joystick")))
   {

      RARCH_LOG("ARCHOS GAMEPAD Detected: %s\n", device_model);
      {
         if ( pad_id1 < 0 )
            pad_id1 = id;
         else
            pad_id2 = id;

         if ( pad_id2 > 0)
            return;

         strlcpy (name_buf, "ARCHOS GamePad", sizeof(name_buf));
         *port = 0;
      }
   }


   else if (strstr(device_model, "AFTB") || strstr(device_model, "AFTT") ||
           strstr(device_model, "AFTS") || strstr(device_model, "AFTM") ||
           strstr(device_model, "AFTRS"))
   {
      RARCH_LOG("Special Device Detected: %s\n", device_model);
      {

         if (strstr(device_name, "Amazon Fire TV Remote"))
         {
            android->pads_connected = 0;
            *port = 0;
            strlcpy(name_buf, device_name, sizeof(name_buf));
         }

         else if (strstr(android->pad_states[0].name,"Amazon Fire TV Remote"))
         {
            android->pads_connected = 0;
            *port = 0;
            strlcpy(name_buf, device_name, sizeof(name_buf));
         }
         else
            strlcpy(name_buf, device_name, sizeof(name_buf));
      }
   }





   else if (strstr(device_name, "Amazon Fire TV Remote")
         || strstr(device_name, "Nexus Remote")
         || strstr(device_name, "SHIELD Remote"))
   {
      android->pads_connected = 0;
      *port = 0;
      strlcpy(name_buf, device_name, sizeof(name_buf));
   }

   else if (strstr(device_name, "iControlPad-"))
      strlcpy(name_buf, "iControlPad HID Joystick profile", sizeof(name_buf));

   else if (strstr(device_name, "TTT THT Arcade console 2P USB Play"))
   {
      if (*port == 0)
         strlcpy(name_buf, "TTT THT Arcade (User 1)", sizeof(name_buf));
      else if (*port == 1)
         strlcpy(name_buf, "TTT THT Arcade (User 2)", sizeof(name_buf));
   }
   else if (strstr(device_name, "MOGA"))
      strlcpy(name_buf, "Moga IME", sizeof(name_buf));




   else if (source == AINPUT_SOURCE_KEYBOARD && kbd_num < MAX_NUM_KEYBOARDS)
   {
      kbd_id[kbd_num] = id;
      kbd_num++;
      return;
   }



   else if (!string_is_empty(device_name))
      strlcpy(name_buf, device_name, sizeof(name_buf));

   if (strstr(android_app->current_ime, "net.obsidianx.android.mogaime"))
      strlcpy(name_buf, android_app->current_ime, sizeof(name_buf));
   else if (strstr(android_app->current_ime, "com.ccpcreations.android.WiiUseAndroid"))
      strlcpy(name_buf, android_app->current_ime, sizeof(name_buf));
   else if (strstr(android_app->current_ime, "com.hexad.bluezime"))
      strlcpy(name_buf, android_app->current_ime, sizeof(name_buf));

   if (*port < 0)
      *port = android->pads_connected;

   input_autoconfigure_connect(
         name_buf,
         ((void*)0),
         android_joypad.ident,
         *port,
         vendorId,
         productId);

   android->pad_states[android->pads_connected].id = id;
   android->pad_states[android->pads_connected].port = *port;

   strlcpy(android->pad_states[*port].name, name_buf,
         sizeof(android->pad_states[*port].name));

   android->pads_connected++;
}
