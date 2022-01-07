
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int intfstream_t ;


 unsigned int MODETEST_VAL ;
 int SEEK_END ;
 int SEEK_SET ;
 int intfstream_read (int *,...) ;
 int intfstream_seek (int *,int,int ) ;
 int intfstream_tell (int *) ;
 scalar_t__ isalnum (int) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 void* toupper (int ) ;

__attribute__((used)) static int detect_ps1_game_sub(intfstream_t *fp,
      char *game_id, int sub_channel_mixed)
{
   uint8_t* tmp;
   uint8_t* boot_file;
   int skip, frame_size, is_mode1, cd_sector;
   uint8_t buffer[2048 * 2];

   buffer[0] = '\0';
   is_mode1 = 0;

   if (intfstream_seek(fp, 0, SEEK_END) == -1)
      goto error;

   if (!sub_channel_mixed)
   {
      if (!(intfstream_tell(fp) & 0x7FF))
      {
         unsigned int mode_test = 0;

         if (intfstream_seek(fp, 0, SEEK_SET) == -1)
            goto error;

         intfstream_read(fp, &mode_test, 4);
         if (mode_test != MODETEST_VAL)
            is_mode1 = 1;
      }
   }

   skip = is_mode1? 0: 24;
   frame_size = sub_channel_mixed? 2448: is_mode1? 2048: 2352;

   if (intfstream_seek(fp, 156 + skip + 16 * frame_size, SEEK_SET) == -1)
      goto error;

   intfstream_read(fp, buffer, 6);

   cd_sector = buffer[2] | (buffer[3] << 8) | (buffer[4] << 16);

   if (intfstream_seek(fp, skip + cd_sector * frame_size, SEEK_SET) == -1)
      goto error;
   intfstream_read(fp, buffer, 2048 * 2);

   tmp = buffer;
   while (tmp < (buffer + 2048 * 2))
   {
      if (!*tmp)
         goto error;

      if (!strncasecmp((const char*)(tmp + 33), "SYSTEM.CNF;1", 12))
         break;

      tmp += *tmp;
   }

   if(tmp >= (buffer + 2048 * 2))
      goto error;

   cd_sector = tmp[2] | (tmp[3] << 8) | (tmp[4] << 16);
   if (intfstream_seek(fp, skip + cd_sector * frame_size, SEEK_SET) == -1)
      goto error;

   intfstream_read(fp, buffer, 256);
   buffer[256] = '\0';

   tmp = buffer;
   while(*tmp && strncasecmp((const char*)tmp, "boot", 4))
      tmp++;

   if(!*tmp)
      goto error;

   boot_file = tmp;
   while(*tmp && *tmp != '\n')
   {
      if((*tmp == '\\') || (*tmp == ':'))
         boot_file = tmp + 1;

      tmp++;
   }

   tmp = boot_file;
   *game_id++ = toupper(*tmp++);
   *game_id++ = toupper(*tmp++);
   *game_id++ = toupper(*tmp++);
   *game_id++ = toupper(*tmp++);
   *game_id++ = '-';

   if(!isalnum(*tmp))
      tmp++;

   while(isalnum(*tmp))
   {
      *game_id++ = *tmp++;
      if(*tmp == '.')
         tmp++;
   }

   *game_id = 0;

   return 1;

error:
   return 0;
}
