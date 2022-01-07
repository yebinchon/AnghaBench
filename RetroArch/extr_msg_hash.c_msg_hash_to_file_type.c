
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;



 int FILE_TYPE_3G2 ;
 int FILE_TYPE_3GP ;
 int FILE_TYPE_ASF ;
 int FILE_TYPE_AVI ;
 int FILE_TYPE_BMP ;
 int FILE_TYPE_BOOL_OFF ;
 int FILE_TYPE_BOOL_ON ;
 int FILE_TYPE_CHD ;
 int FILE_TYPE_COMPRESSED ;
 int FILE_TYPE_CORE ;
 int FILE_TYPE_CRC ;
 int FILE_TYPE_CUE ;
 int FILE_TYPE_CURSOR ;
 int FILE_TYPE_DIRECTORY ;
 int FILE_TYPE_DIVX ;
 int FILE_TYPE_F4F ;
 int FILE_TYPE_F4V ;
 int FILE_TYPE_FLAC ;
 int FILE_TYPE_FLV ;
 int FILE_TYPE_GDI ;
 int FILE_TYPE_GONG ;
 int FILE_TYPE_IMAGE ;
 int FILE_TYPE_IN_CARCHIVE ;
 int FILE_TYPE_ISO ;
 int FILE_TYPE_JPEG ;
 int FILE_TYPE_LUTRO ;
 int FILE_TYPE_M2P ;
 int FILE_TYPE_M2TS ;
 int FILE_TYPE_M4A ;
 int FILE_TYPE_MD5 ;
 int FILE_TYPE_MKV ;
 int FILE_TYPE_MOD ;
 int FILE_TYPE_MORE ;
 int FILE_TYPE_MOV ;
 int FILE_TYPE_MOVIE ;
 int FILE_TYPE_MP3 ;
 int FILE_TYPE_MP4 ;
 int FILE_TYPE_MPEG ;
 int FILE_TYPE_MPG ;
 int FILE_TYPE_MUSIC ;
 int FILE_TYPE_MXF ;
 int FILE_TYPE_NONE ;
 int FILE_TYPE_OGG ;
 int FILE_TYPE_OGM ;
 int FILE_TYPE_PLAIN ;
 int FILE_TYPE_PNG ;
 int FILE_TYPE_PS ;
 int FILE_TYPE_RDB ;
 int FILE_TYPE_S3M ;
 int FILE_TYPE_SHA1 ;
 int FILE_TYPE_SHADER_CG ;
 int FILE_TYPE_SHADER_GLSL ;
 int FILE_TYPE_SHADER_HLSL ;
 int FILE_TYPE_SHADER_PRESET_CGP ;
 int FILE_TYPE_SHADER_PRESET_GLSLP ;
 int FILE_TYPE_SHADER_PRESET_HLSLP ;
 int FILE_TYPE_SHADER_PRESET_SLANGP ;
 int FILE_TYPE_SHADER_SLANG ;
 int FILE_TYPE_TGA ;
 int FILE_TYPE_TS ;
 int FILE_TYPE_VOB ;
 int FILE_TYPE_WAV ;
 int FILE_TYPE_WEBM ;
 int FILE_TYPE_WMA ;
 int FILE_TYPE_WMV ;
 int FILE_TYPE_XM ;
enum msg_file_type msg_hash_to_file_type(uint32_t hash)
{
   switch (hash)
   {
      case 189:
      case 204:
      case 203:
      case 194:
      case 193:
      case 205:
         return FILE_TYPE_COMPRESSED;
      case 192:
         return FILE_TYPE_IN_CARCHIVE;
      case 136:
         return FILE_TYPE_MORE;
      case 188:
         return FILE_TYPE_CORE;
      case 131:
         return FILE_TYPE_RDB;
      case 186:
         return FILE_TYPE_CURSOR;
      case 184:
         return FILE_TYPE_PLAIN;
      case 185:
         return FILE_TYPE_DIRECTORY;
      case 134:
         return FILE_TYPE_MUSIC;
      case 138:
         return FILE_TYPE_IMAGE;
      case 135:
         return FILE_TYPE_MOVIE;
      case 132:
         return FILE_TYPE_BOOL_ON;
      case 133:
         return FILE_TYPE_BOOL_OFF;
      case 142:
         return FILE_TYPE_SHADER_GLSL;
      case 140:
         return FILE_TYPE_SHADER_HLSL;
      case 191:
         return FILE_TYPE_SHADER_CG;
      case 129:
         return FILE_TYPE_SHADER_SLANG;
      case 141:
         return FILE_TYPE_SHADER_PRESET_GLSLP;
      case 139:
         return FILE_TYPE_SHADER_PRESET_HLSLP;
      case 190:
         return FILE_TYPE_SHADER_PRESET_CGP;
      case 128:
         return FILE_TYPE_SHADER_PRESET_SLANGP;
      case 187:
         return FILE_TYPE_CRC;
      case 130:
         return FILE_TYPE_SHA1;
      case 137:
         return FILE_TYPE_MD5;
      case 201:
      case 200:
         return FILE_TYPE_CUE;
      case 199:
      case 198:
         return FILE_TYPE_GDI;
      case 197:
      case 196:
         return FILE_TYPE_ISO;
      case 195:
         return FILE_TYPE_LUTRO;
      case 202:
         return FILE_TYPE_CHD;
      default:
         break;
   }

   return FILE_TYPE_NONE;
}
