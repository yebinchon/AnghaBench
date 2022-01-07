
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum file_path_enum { ____Placeholder_file_path_enum } file_path_enum ;
const char *file_path_str(enum file_path_enum enum_idx)
{
   const char *str = "null";

   switch (enum_idx)
   {
      case 168:
         str = "DETECT";
         break;
      case 181:
         str = "content.png";
         break;
      case 155:
         str = "Lutro.lpl";
         break;
      case 150:
         str = "nul";
         break;
      case 185:
         str = ".cgp";
         break;
      case 165:
         str = ".glslp";
         break;
      case 137:
         str = ".slangp";
         break;
      case 190:
         str = ".auto";
         break;
      case 186:
         str = ".bsv";
         break;
      case 148:
         str = ".opt";
         break;
      case 175:
         str = ".info";
         break;
      case 182:
         str = ".cfg";
         break;
      case 144:
         str = ".rmp";
         break;
      case 143:
         str = ".rtc";
         break;
      case 183:
         str = ".cht";
         break;
      case 136:
         str = ".srm";
         break;
      case 135:
         str = ".state";
         break;
      case 157:
         str = ".lpl";
         break;
      case 156:
         str = "lpl";
         break;
      case 146:
         str = ".png";
         break;
      case 152:
         str = ".mp3";
         break;
      case 166:
         str = ".flac";
         break;
      case 149:
         str = ".ogg";
         break;
      case 130:
         str = ".wav";
         break;
      case 153:
         str = ".mod";
         break;
      case 141:
         str = ".s3m";
         break;
      case 129:
         str = ".xm";
         break;
      case 160:
         str = ".jpeg";
         break;
      case 188:
         str = ".bmp";
         break;
      case 134:
         str = ".tga";
         break;
      case 159:
         str = ".jpg";
         break;
      case 131:
         str = ".ups";
         break;
      case 161:
         str = ".ips";
         break;
      case 187:
         str = ".bps";
         break;
      case 145:
         str = ".rdb";
         break;
      case 128:
         str = ".zip";
         break;
      case 193:
         str = ".7z";
         break;
      case 162:
         str = ".index";
         break;
      case 164:
         str = ".index-dirs";
         break;
      case 163:
         str = ".index-extended";
         break;
      case 151:
         str = "registry.lpl";
         break;
      case 171:
         str = "http://thumbnails.libretro.com";
         break;
      case 172:
         str = "http://thumbnailpacks.libretro.com";
         break;
      case 158:



         str = "http://le.builds.lakka.tv";

         break;
      case 139:
         str = "shaders_glsl.zip";
         break;
      case 138:
         str = "shaders_slang.zip";
         break;
      case 140:
         str = "shaders_cg.zip";
         break;
      case 170:
         str = "database-rdb.zip";
         break;
      case 147:
         str = "overlays.zip";
         break;
      case 174:
         str = "info.zip";
         break;
      case 184:
         str = "cheats.zip";
         break;
      case 192:
         str = "assets.zip";
         break;
      case 191:
         str = "autoconfig.zip";
         break;
      case 179:
         str = "content_history.lpl";
         break;
      case 180:
         str = "content_favorites.lpl";
         break;
      case 177:
         str = "content_music_history.lpl";
         break;
      case 176:
         str = "content_video_history.lpl";
         break;
      case 178:
         str = "content_image_history.lpl";
         break;
      case 173:
         str = "retroarch-core-options.cfg";
         break;
      case 154:
         str = "retroarch.cfg";
         break;
      case 189:
         str = "bg.png";
         break;
      case 133:
         str = "font.ttf";
         break;
      case 142:
         str = ".lrtl";
         break;
      case 169:
         str = "retroarch.log";
         break;
      case 167:
         str = ".log";
         break;
      case 132:
      default:
         break;
   }

   return str;
}
