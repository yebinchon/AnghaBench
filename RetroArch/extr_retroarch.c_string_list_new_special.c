
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
typedef enum string_list_type { ____Placeholder_string_list_type } string_list_type ;
struct TYPE_15__ {char* path; char* display_name; } ;
typedef TYPE_1__ core_info_t ;
typedef int core_info_list_t ;
struct TYPE_23__ {char* ident; } ;
struct TYPE_22__ {char* ident; } ;
struct TYPE_21__ {char* ident; } ;
struct TYPE_20__ {char* ident; } ;
struct TYPE_19__ {char* ident; } ;
struct TYPE_18__ {char* ident; } ;
struct TYPE_17__ {char* ident; } ;
struct TYPE_16__ {char* ident; } ;
struct TYPE_14__ {char* ident; } ;
struct TYPE_13__ {char* ident; } ;
 int audio_driver_find_handle (unsigned int) ;
 TYPE_12__** audio_drivers ;
 int audio_resampler_driver_find_handle (unsigned int) ;
 char* audio_resampler_driver_find_ident (unsigned int) ;
 int camera_driver_find_handle (unsigned int) ;
 TYPE_11__** camera_drivers ;
 int core_info_get_list (int **) ;
 int core_info_list_get_supported_cores (int *,char const*,TYPE_1__ const**,size_t*) ;
 int hid_driver_find_handle (unsigned int) ;
 TYPE_9__** hid_drivers ;
 int input_driver_find_handle (unsigned int) ;
 TYPE_8__** input_drivers ;
 int joypad_driver_find_handle (unsigned int) ;
 TYPE_7__** joypad_drivers ;
 int location_driver_find_handle (unsigned int) ;
 TYPE_6__** location_drivers ;
 int menu_driver_find_handle (unsigned int) ;
 char* menu_driver_find_ident (unsigned int) ;
 int midi_driver_find_handle (unsigned int) ;
 TYPE_5__** midi_drivers ;
 int record_driver_find_handle (unsigned int) ;
 TYPE_4__** record_drivers ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 int strlen (char const*) ;
 int video_driver_find_handle (unsigned int) ;
 TYPE_3__** video_drivers ;
 int wifi_driver_find_handle (unsigned int) ;
 TYPE_2__** wifi_drivers ;

struct string_list *string_list_new_special(enum string_list_type type,
      void *data, unsigned *len, size_t *list_size)
{
   union string_list_elem_attr attr;
   unsigned i;
   core_info_list_t *core_info_list = ((void*)0);
   const core_info_t *core_info = ((void*)0);
   struct string_list *s = string_list_new();

   if (!s || !len)
      goto error;

   attr.i = 0;
   *len = 0;

   switch (type)
   {
      case 135:
      case 140:
         for (i = 0; camera_driver_find_handle(i); i++)
         {
            const char *opt = camera_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 128:
      case 136:
         for (i = 0; location_driver_find_handle(i); i++)
         {
            const char *opt = location_drivers[i]->ident;
            *len += strlen(opt) + 1;
            string_list_append(s, opt, attr);
         }
         break;
      case 142:
         for (i = 0; audio_driver_find_handle(i); i++)
         {
            const char *opt = audio_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 141:
         for (i = 0; audio_resampler_driver_find_handle(i); i++)
         {
            const char *opt = audio_resampler_driver_find_ident(i);
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 129:
         for (i = 0; video_driver_find_handle(i); i++)
         {
            const char *opt = video_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 139:
         for (i = 0; input_driver_find_handle(i); i++)
         {
            const char *opt = input_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 138:
         break;
      case 137:
         for (i = 0; joypad_driver_find_handle(i); i++)
         {
            const char *opt = joypad_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 132:
         for (i = 0; record_driver_find_handle(i); i++)
         {
            const char *opt = record_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 134:
         for (i = 0; midi_driver_find_handle(i); i++)
         {
            const char *opt = midi_drivers[i]->ident;
            *len += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
      case 130:
         core_info_get_list(&core_info_list);

         core_info_list_get_supported_cores(core_info_list,
               (const char*)data, &core_info, list_size);

         if (!core_info)
            goto error;

         if (*list_size == 0)
            goto error;

         for (i = 0; i < *list_size; i++)
         {
            const core_info_t *info = (const core_info_t*)&core_info[i];
            const char *opt = info->path;

            if (!opt)
               goto error;

            *len += strlen(opt) + 1;
            string_list_append(s, opt, attr);
         }
         break;
      case 131:
         core_info_get_list(&core_info_list);
         core_info_list_get_supported_cores(core_info_list,
               (const char*)data, &core_info, list_size);

         if (!core_info)
            goto error;

         if (*list_size == 0)
            goto error;

         for (i = 0; i < *list_size; i++)
         {
            core_info_t *info = (core_info_t*)&core_info[i];
            const char *opt = info->display_name;

            if (!opt)
               goto error;

            *len += strlen(opt) + 1;
            string_list_append(s, opt, attr);
         }
         break;
      case 133:
      default:
         goto error;
   }

   return s;

error:
   string_list_free(s);
   s = ((void*)0);
   return ((void*)0);
}
