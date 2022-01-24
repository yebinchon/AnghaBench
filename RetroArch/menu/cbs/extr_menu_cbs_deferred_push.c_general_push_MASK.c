#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  tmp_str2 ;
typedef  int /*<<< orphan*/  tmp_str ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct retro_system_info {char* valid_extensions; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {scalar_t__ multimedia_builtin_imageviewer_enable; scalar_t__ multimedia_builtin_mediaplayer_enable; int /*<<< orphan*/  filter_by_current_core; } ;
struct TYPE_14__ {TYPE_2__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_15__ {int /*<<< orphan*/  scratch_buf; int /*<<< orphan*/  scratch2_buf; } ;
typedef  TYPE_4__ menu_handle_t ;
struct TYPE_16__ {char* path; char* label; char* exts; int /*<<< orphan*/  setting; int /*<<< orphan*/  enum_idx; int /*<<< orphan*/  type_default; } ;
typedef  TYPE_5__ menu_displaylist_info_t ;
typedef  enum menu_displaylist_ctl_state { ____Placeholder_menu_displaylist_ctl_state } menu_displaylist_ctl_state ;
struct TYPE_17__ {char* all_ext; } ;
typedef  TYPE_6__ core_info_list_t ;
struct TYPE_12__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TYPE_PLAIN ; 
 int PATH_MAX_LENGTH ; 
#define  PUSH_ARCHIVE_OPEN 131 
#define  PUSH_ARCHIVE_OPEN_DETECT_CORE 130 
#define  PUSH_DEFAULT 129 
#define  PUSH_DETECT_CORE_LIST 128 
 int /*<<< orphan*/  ST_DIR ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__**) ; 
 int FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct retro_system_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct retro_system_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct retro_system_info*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 () ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct retro_system_info* FUNC13 () ; 
 void* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC19 (char*,size_t,struct string_list*,char*) ; 
 struct string_list* FUNC20 () ; 
 struct string_list* FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 

__attribute__((used)) static int FUNC24(menu_displaylist_info_t *info,
      unsigned id, enum menu_displaylist_ctl_state state)
{
   char                      *newstring2 = NULL;
   core_info_list_t           *list      = NULL;
   settings_t                  *settings = FUNC0();
   menu_handle_t                  *menu  = FUNC10();

   if (!menu)
      return FUNC9();

   FUNC1(&list);

   switch (id)
   {
      case PUSH_DEFAULT:
      case PUSH_DETECT_CORE_LIST:
         break;
      default:
         {
            char tmp_str[PATH_MAX_LENGTH];
            char tmp_str2[PATH_MAX_LENGTH];

            tmp_str[0] = '\0';
            tmp_str2[0] = '\0';

            FUNC3(tmp_str, menu->scratch2_buf,
                  menu->scratch_buf, sizeof(tmp_str));
            FUNC3(tmp_str2, menu->scratch2_buf,
                  menu->scratch_buf, sizeof(tmp_str2));

            if (!FUNC15(info->path))
               FUNC4(info->path);
            if (!FUNC15(info->label))
               FUNC4(info->label);

            info->path  = FUNC14(tmp_str);
            info->label = FUNC14(tmp_str2);
         }
         break;
   }

   info->type_default = FILE_TYPE_PLAIN;

   switch (id)
   {
      case PUSH_ARCHIVE_OPEN_DETECT_CORE:
      case PUSH_ARCHIVE_OPEN:
      case PUSH_DEFAULT:
         info->setting      = FUNC11(info->enum_idx);
         break;
      default:
         break;
   }

   newstring2                     = (char*)FUNC8(PATH_MAX_LENGTH * sizeof(char));

   newstring2[0]                  = '\0';

   switch (id)
   {
      case PUSH_ARCHIVE_OPEN:
         {
            struct retro_system_info *system = 
               FUNC13();
            if (system)
            {
               if (!FUNC15(system->valid_extensions))
                  FUNC23(newstring2, system->valid_extensions,
                        PATH_MAX_LENGTH * sizeof(char));
            }
         }
         break;
      case PUSH_DEFAULT:
         {
            bool new_exts_allocated               = false;
            char *new_exts                        = NULL;

            if (FUNC12(info->setting) == ST_DIR)
            {
            }
            else
            {
               struct retro_system_info *system = 
                  FUNC13();
               if (system && !FUNC15(system->valid_extensions))
               {
                  new_exts           = FUNC14(system->valid_extensions);
                  new_exts_allocated = true;
               }
            }

            if (!new_exts)
               new_exts = info->exts;

            if (!FUNC15(new_exts))
            {
               size_t path_size               = PATH_MAX_LENGTH * sizeof(char);
               struct string_list *str_list3  = FUNC21(new_exts, "|");

#ifdef HAVE_IBXM
               {
                  union string_list_elem_attr attr;
                  attr.i = 0;
                  string_list_append(str_list3, "s3m", attr);
                  string_list_append(str_list3, "mod", attr);
                  string_list_append(str_list3, "xm", attr);
               }
#endif
               FUNC19(newstring2, path_size,
                     str_list3, "|");
               FUNC18(str_list3);

            }

            if (new_exts_allocated)
            {
               FUNC4(new_exts);

               if (new_exts == info->exts)
                  info->exts = NULL;
            }
         }
         break;
      case PUSH_ARCHIVE_OPEN_DETECT_CORE:
      case PUSH_DETECT_CORE_LIST:
         {
            union string_list_elem_attr attr;
            size_t path_size                 = PATH_MAX_LENGTH * sizeof(char);
            char *newstring                  = (char*)FUNC8(PATH_MAX_LENGTH * sizeof(char));
            struct string_list *str_list2    = FUNC20();
            struct retro_system_info *system = FUNC13();

            newstring[0]                     = '\0';
            attr.i                           = 0;

            if (system)
            {
               if (!FUNC15(system->valid_extensions))
               {
                  unsigned x;
                  struct string_list *str_list    = FUNC21(system->valid_extensions, "|");

                  for (x = 0; x < str_list->size; x++)
                  {
                     const char *elem = str_list->elems[x].data;
                     FUNC16(str_list2, elem, attr);
                  }

                  FUNC18(str_list);
               }
            }

            if (!settings->bools.filter_by_current_core)
            {
               if (list && !FUNC15(list->all_ext))
               {
                  unsigned x;
                  struct string_list *str_list    = FUNC21(list->all_ext, "|");

                  for (x = 0; x < str_list->size; x++)
                  {
                     if (!FUNC17(str_list2, str_list->elems[x].data))
                     {
                        const char *elem = str_list->elems[x].data;
                        FUNC16(str_list2, elem, attr);
                     }
                  }

                  FUNC18(str_list);
               }
            }

            FUNC19(newstring, path_size,
                  str_list2, "|");

            {
               struct string_list *str_list3  = FUNC21(newstring, "|");

#ifdef HAVE_IBXM
               {
                  union string_list_elem_attr attr;
                  attr.i = 0;
                  string_list_append(str_list3, "s3m", attr);
                  string_list_append(str_list3, "mod", attr);
                  string_list_append(str_list3, "xm", attr);
               }
#endif
               FUNC19(newstring2, path_size,
                     str_list3, "|");
               FUNC18(str_list3);
            }
            FUNC4(newstring);
            FUNC18(str_list2);
         }
         break;
   }

   if (settings->bools.multimedia_builtin_mediaplayer_enable ||
         settings->bools.multimedia_builtin_imageviewer_enable)
   {
      struct retro_system_info sysinfo = {0};

      (void)sysinfo;
#if defined(HAVE_FFMPEG) || defined(HAVE_MPV)
      if (settings->bools.multimedia_builtin_mediaplayer_enable)
      {
#if defined(HAVE_FFMPEG)
         libretro_ffmpeg_retro_get_system_info(&sysinfo);
#elif defined(HAVE_MPV)
         libretro_mpv_retro_get_system_info(&sysinfo);
#endif
         strlcat(newstring2, "|", PATH_MAX_LENGTH * sizeof(char));
         strlcat(newstring2, sysinfo.valid_extensions,
               PATH_MAX_LENGTH * sizeof(char));
      }
#endif
#ifdef HAVE_IMAGEVIEWER
      if (settings->bools.multimedia_builtin_imageviewer_enable)
      {
         libretro_imageviewer_retro_get_system_info(&sysinfo);
         strlcat(newstring2, "|", PATH_MAX_LENGTH * sizeof(char));
         strlcat(newstring2, sysinfo.valid_extensions,
               PATH_MAX_LENGTH * sizeof(char));
      }
#endif
   }

   if (!FUNC15(newstring2))
   {
      if (!FUNC15(info->exts))
         FUNC4(info->exts);
      info->exts = FUNC14(newstring2);
   }
   FUNC4(newstring2);

   return FUNC2(info, state);
}