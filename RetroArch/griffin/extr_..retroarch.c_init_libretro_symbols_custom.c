
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_core_t {int dummy; } ;
typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef int dylib_t ;


 int CORE_SYMBOLS (int ) ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_FAILED_TO_OPEN_LIBRETRO_CORE ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,char const*) ;
 int RARCH_PATH_CORE ;
 int SYMBOL ;
 int SYMBOL_DUMMY ;
 int SYMBOL_FFMPEG ;
 int SYMBOL_GONG ;
 int SYMBOL_IMAGEVIEWER ;
 int SYMBOL_MPV ;
 int SYMBOL_NETRETROPAD ;
 int SYMBOL_VIDEOPROCESSOR ;
 int dylib_error () ;
 int dylib_load (char const*) ;
 int lib_handle ;
 int load_dynamic_core (char const*,int ,int ) ;
 int msg_hash_to_str (int ) ;
 char* path_get (int ) ;
 int path_get_ptr (int ) ;
 int path_get_realsize (int ) ;
 int retro_assert (int) ;
 int retroarch_fail (int,char*) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static bool init_libretro_symbols_custom(enum rarch_core_type type,
      struct retro_core_t *current_core, const char *lib_path, void *_lib_handle_p)
{





   switch (type)
   {
      case 129:
         {
            CORE_SYMBOLS(SYMBOL);
         }
         break;
      case 135:
         CORE_SYMBOLS(SYMBOL_DUMMY);
         break;
      case 134:



         break;
      case 131:



         break;
      case 132:



         break;
      case 130:



         break;
      case 128:



         break;
      case 133:



         break;
   }

   return 1;
}
