
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {uintptr_t content_icon; } ;
typedef TYPE_2__ stripes_node_t ;
struct TYPE_8__ {uintptr_t* list; } ;
struct TYPE_10__ {int depth; TYPE_1__ textures; int categories_selection_ptr; } ;
typedef TYPE_3__ stripes_handle_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
 unsigned int MENU_SETTINGS_CHEEVOS_START ;
 unsigned int MENU_SETTINGS_NETPLAY_ROOMS_START ;
 size_t STRIPES_TEXTURE_ACHIEVEMENT_LIST ;
 size_t STRIPES_TEXTURE_ADD_FAVORITE ;
 size_t STRIPES_TEXTURE_CHEAT_OPTIONS ;
 size_t STRIPES_TEXTURE_CLOSE ;
 size_t STRIPES_TEXTURE_CORE ;
 size_t STRIPES_TEXTURE_CORE_INFO ;
 size_t STRIPES_TEXTURE_CORE_OPTIONS ;
 size_t STRIPES_TEXTURE_CURSOR ;
 size_t STRIPES_TEXTURE_DISK_OPTIONS ;
 size_t STRIPES_TEXTURE_FAVORITE ;
 size_t STRIPES_TEXTURE_FILE ;
 size_t STRIPES_TEXTURE_FOLDER ;
 size_t STRIPES_TEXTURE_IMAGE ;
 size_t STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS ;
 size_t STRIPES_TEXTURE_LOADSTATE ;
 size_t STRIPES_TEXTURE_MOVIE ;
 size_t STRIPES_TEXTURE_MUSIC ;
 size_t STRIPES_TEXTURE_RDB ;
 size_t STRIPES_TEXTURE_RELOAD ;
 size_t STRIPES_TEXTURE_RENAME ;
 size_t STRIPES_TEXTURE_RESUME ;
 size_t STRIPES_TEXTURE_ROOM ;
 size_t STRIPES_TEXTURE_ROOM_LAN ;
 size_t STRIPES_TEXTURE_ROOM_MITM ;
 size_t STRIPES_TEXTURE_RUN ;
 size_t STRIPES_TEXTURE_SAVESTATE ;
 size_t STRIPES_TEXTURE_SCREENSHOT ;
 size_t STRIPES_TEXTURE_SETTING ;
 size_t STRIPES_TEXTURE_SHADER_OPTIONS ;
 size_t STRIPES_TEXTURE_SUBSETTING ;
 size_t STRIPES_TEXTURE_UNDO ;
 size_t STRIPES_TEXTURE_WIFI ;
 size_t STRIPES_TEXTURE_ZIP ;
 uintptr_t get_badge_texture (int) ;
 int stripes_get_system_tab (TYPE_3__*,unsigned int) ;

__attribute__((used)) static uintptr_t stripes_icon_get_id(stripes_handle_t *stripes,
      stripes_node_t *core_node, stripes_node_t *node,
      enum msg_hash_enums enum_idx, unsigned type, bool active)
{
   switch (enum_idx)
   {
      case 173:
      case 166:
         return stripes->textures.list[STRIPES_TEXTURE_CORE_OPTIONS];
      case 177:
      case 176:
         return stripes->textures.list[STRIPES_TEXTURE_ADD_FAVORITE];
      case 162:
      case 164:
         return stripes->textures.list[STRIPES_TEXTURE_RENAME];
      case 174:
         return stripes->textures.list[STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS];
      case 175:
         return stripes->textures.list[STRIPES_TEXTURE_CHEAT_OPTIONS];
      case 171:
         return stripes->textures.list[STRIPES_TEXTURE_DISK_OPTIONS];
      case 155:
         return stripes->textures.list[STRIPES_TEXTURE_SHADER_OPTIONS];
      case 179:
         return stripes->textures.list[STRIPES_TEXTURE_ACHIEVEMENT_LIST];
      case 178:
         return stripes->textures.list[STRIPES_TEXTURE_ACHIEVEMENT_LIST];
      case 157:
         return stripes->textures.list[STRIPES_TEXTURE_SAVESTATE];
      case 167:
         return stripes->textures.list[STRIPES_TEXTURE_LOADSTATE];
      case 165:
      case 153:
      case 152:
         return stripes->textures.list[STRIPES_TEXTURE_UNDO];
      case 154:
         return stripes->textures.list[STRIPES_TEXTURE_SCREENSHOT];
      case 172:
         return stripes->textures.list[STRIPES_TEXTURE_CLOSE];
      case 161:
         return stripes->textures.list[STRIPES_TEXTURE_RELOAD];
      case 163:
         return stripes->textures.list[STRIPES_TEXTURE_RENAME];
      case 160:
         return stripes->textures.list[STRIPES_TEXTURE_RESUME];
      case 159:
      case 158:
         return stripes->textures.list[STRIPES_TEXTURE_SAVESTATE];
      case 169:
      case 170:
         return stripes->textures.list[STRIPES_TEXTURE_FOLDER];
      case 168:
         return stripes->textures.list[STRIPES_TEXTURE_RDB];
      default:
         break;
   }

   switch(type)
   {
      case 191:
         return stripes->textures.list[STRIPES_TEXTURE_FOLDER];
      case 184:
      case 187:
         return stripes->textures.list[STRIPES_TEXTURE_FILE];
      case 180:
         if (core_node)
            return core_node->content_icon;

         switch (stripes_get_system_tab(stripes,
                  (unsigned)stripes->categories_selection_ptr))
         {
            case 131:
               return stripes->textures.list[STRIPES_TEXTURE_FAVORITE];
            case 129:
               return stripes->textures.list[STRIPES_TEXTURE_MUSIC];
            default:
               break;
         }
         return stripes->textures.list[STRIPES_TEXTURE_FILE];
      case 194:
         return stripes->textures.list[STRIPES_TEXTURE_ZIP];
      case 185:
         return stripes->textures.list[STRIPES_TEXTURE_MUSIC];
      case 189:
      case 188:
         return stripes->textures.list[STRIPES_TEXTURE_IMAGE];
      case 186:
         return stripes->textures.list[STRIPES_TEXTURE_MOVIE];
      case 193:
      case 190:
         return stripes->textures.list[STRIPES_TEXTURE_CORE];
      case 182:
         return stripes->textures.list[STRIPES_TEXTURE_RDB];
      case 192:
         return stripes->textures.list[STRIPES_TEXTURE_CURSOR];
      case 183:
      case 136:
         return stripes->textures.list[STRIPES_TEXTURE_RUN];
      case 146:
         return stripes->textures.list[STRIPES_TEXTURE_CLOSE];
      case 135:
         return stripes->textures.list[STRIPES_TEXTURE_SAVESTATE];
      case 138:
         return stripes->textures.list[STRIPES_TEXTURE_LOADSTATE];
      case 181:
      case 143:
         return stripes->textures.list[STRIPES_TEXTURE_CORE_INFO];
      case 141:
      case 156:
         return stripes->textures.list[STRIPES_TEXTURE_CORE_OPTIONS];
      case 142:
         return stripes->textures.list[STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS];
      case 145:
         return stripes->textures.list[STRIPES_TEXTURE_CHEAT_OPTIONS];
      case 144:
         return stripes->textures.list[STRIPES_TEXTURE_DISK_OPTIONS];
      case 140:
         return stripes->textures.list[STRIPES_TEXTURE_SHADER_OPTIONS];
      case 134:
         return stripes->textures.list[STRIPES_TEXTURE_SCREENSHOT];
      case 139:
         return stripes->textures.list[STRIPES_TEXTURE_CLOSE];
      case 137:
         return stripes->textures.list[STRIPES_TEXTURE_RELOAD];
      case 147:
         if (stripes->depth == 3)
            return stripes->textures.list[STRIPES_TEXTURE_SUBSETTING];
         return stripes->textures.list[STRIPES_TEXTURE_SETTING];
      case 133:
         return stripes->textures.list[STRIPES_TEXTURE_SETTING];
      case 151:
         return stripes->textures.list[STRIPES_TEXTURE_CORE_INFO];
      case 132:
         return stripes->textures.list[STRIPES_TEXTURE_WIFI];
   }
   return stripes->textures.list[STRIPES_TEXTURE_SUBSETTING];
}
