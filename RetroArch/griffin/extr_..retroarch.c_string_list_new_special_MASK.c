#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct string_list {int dummy; } ;
typedef  enum string_list_type { ____Placeholder_string_list_type } string_list_type ;
struct TYPE_15__ {char* path; char* display_name; } ;
typedef  TYPE_1__ core_info_t ;
typedef  int /*<<< orphan*/  core_info_list_t ;
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

/* Variables and functions */
#define  STRING_LIST_AUDIO_DRIVERS 142 
#define  STRING_LIST_AUDIO_RESAMPLER_DRIVERS 141 
#define  STRING_LIST_CAMERA_DRIVERS 140 
#define  STRING_LIST_INPUT_DRIVERS 139 
#define  STRING_LIST_INPUT_HID_DRIVERS 138 
#define  STRING_LIST_INPUT_JOYPAD_DRIVERS 137 
#define  STRING_LIST_LOCATION_DRIVERS 136 
#define  STRING_LIST_MENU_DRIVERS 135 
#define  STRING_LIST_MIDI_DRIVERS 134 
#define  STRING_LIST_NONE 133 
#define  STRING_LIST_RECORD_DRIVERS 132 
#define  STRING_LIST_SUPPORTED_CORES_NAMES 131 
#define  STRING_LIST_SUPPORTED_CORES_PATHS 130 
#define  STRING_LIST_VIDEO_DRIVERS 129 
#define  STRING_LIST_WIFI_DRIVERS 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_12__** audio_drivers ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 TYPE_11__** camera_drivers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_1__ const**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 TYPE_9__** hid_drivers ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 TYPE_8__** input_drivers ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 TYPE_7__** joypad_drivers ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 TYPE_6__** location_drivers ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 char* FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 TYPE_5__** midi_drivers ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 TYPE_4__** record_drivers ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*) ; 
 struct string_list* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 TYPE_3__** video_drivers ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 TYPE_2__** wifi_drivers ; 

struct string_list *FUNC20(enum string_list_type type,
      void *data, unsigned *len, size_t *list_size)
{
   union string_list_elem_attr attr;
   unsigned i;
   core_info_list_t *core_info_list = NULL;
   const core_info_t *core_info     = NULL;
   struct string_list *s            = FUNC16();

   if (!s || !len)
      goto error;

   attr.i = 0;
   *len   = 0;

   switch (type)
   {
      case STRING_LIST_MENU_DRIVERS:
#ifdef HAVE_MENU
         for (i = 0; menu_driver_find_handle(i); i++)
         {
            const char *opt  = menu_driver_find_ident(i);
            *len            += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
#endif
      case STRING_LIST_CAMERA_DRIVERS:
         for (i = 0; FUNC3(i); i++)
         {
            const char *opt  = camera_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_WIFI_DRIVERS:
#ifdef HAVE_WIFI
         for (i = 0; wifi_driver_find_handle(i); i++)
         {
            const char *opt  = wifi_drivers[i]->ident;
            *len            += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
         break;
#endif
      case STRING_LIST_LOCATION_DRIVERS:
         for (i = 0; FUNC9(i); i++)
         {
            const char *opt  = location_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;
            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_AUDIO_DRIVERS:
         for (i = 0; FUNC0(i); i++)
         {
            const char *opt  = audio_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_AUDIO_RESAMPLER_DRIVERS:
         for (i = 0; FUNC1(i); i++)
         {
            const char *opt  = FUNC2(i);
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_VIDEO_DRIVERS:
         for (i = 0; FUNC18(i); i++)
         {
            const char *opt  = video_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_INPUT_DRIVERS:
         for (i = 0; FUNC7(i); i++)
         {
            const char *opt  = input_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_INPUT_HID_DRIVERS:
#ifdef HAVE_HID
         for (i = 0; hid_driver_find_handle(i); i++)
         {
            const char *opt  = hid_drivers[i]->ident;
            *len            += strlen(opt) + 1;

            string_list_append(s, opt, attr);
         }
#endif
         break;
      case STRING_LIST_INPUT_JOYPAD_DRIVERS:
         for (i = 0; FUNC8(i); i++)
         {
            const char *opt  = joypad_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_RECORD_DRIVERS:
         for (i = 0; FUNC13(i); i++)
         {
            const char *opt  = record_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_MIDI_DRIVERS:
         for (i = 0; FUNC12(i); i++)
         {
            const char *opt  = midi_drivers[i]->ident;
            *len            += FUNC17(opt) + 1;

            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_SUPPORTED_CORES_PATHS:
         FUNC4(&core_info_list);

         FUNC5(core_info_list,
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

            *len += FUNC17(opt) + 1;
            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_SUPPORTED_CORES_NAMES:
         FUNC4(&core_info_list);
         FUNC5(core_info_list,
               (const char*)data, &core_info, list_size);

         if (!core_info)
            goto error;

         if (*list_size == 0)
            goto error;

         for (i = 0; i < *list_size; i++)
         {
            core_info_t *info = (core_info_t*)&core_info[i];
            const char  *opt  = info->display_name;

            if (!opt)
               goto error;

            *len            += FUNC17(opt) + 1;
            FUNC14(s, opt, attr);
         }
         break;
      case STRING_LIST_NONE:
      default:
         goto error;
   }

   return s;

error:
   FUNC15(s);
   s    = NULL;
   return NULL;
}