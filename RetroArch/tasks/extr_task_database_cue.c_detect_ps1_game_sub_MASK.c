#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  intfstream_t ;

/* Variables and functions */
 unsigned int MODETEST_VAL ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(intfstream_t *fp,
      char *game_id, int sub_channel_mixed)
{
   uint8_t* tmp;
   uint8_t* boot_file;
   int skip, frame_size, is_mode1, cd_sector;
   uint8_t buffer[2048 * 2];

   buffer[0] = '\0';
   is_mode1  = 0;

   if (FUNC1(fp, 0, SEEK_END) == -1)
      goto error;

   if (!sub_channel_mixed)
   {
      if (!(FUNC2(fp) & 0x7FF))
      {
         unsigned int mode_test = 0;

         if (FUNC1(fp, 0, SEEK_SET) == -1)
            goto error;

         FUNC0(fp, &mode_test, 4);
         if (mode_test != MODETEST_VAL)
            is_mode1 = 1;
      }
   }

   skip       = is_mode1? 0: 24;
   frame_size = sub_channel_mixed? 2448: is_mode1? 2048: 2352;

   if (FUNC1(fp, 156 + skip + 16 * frame_size, SEEK_SET) == -1)
      goto error;

   FUNC0(fp, buffer, 6);

   cd_sector = buffer[2] | (buffer[3] << 8) | (buffer[4] << 16);

   if (FUNC1(fp, skip + cd_sector * frame_size, SEEK_SET) == -1)
      goto error;
   FUNC0(fp, buffer, 2048 * 2);

   tmp = buffer;
   while (tmp < (buffer + 2048 * 2))
   {
      if (!*tmp)
         goto error;

      if (!FUNC4((const char*)(tmp + 33), "SYSTEM.CNF;1", 12))
         break;

      tmp += *tmp;
   }

   if(tmp >= (buffer + 2048 * 2))
      goto error;

   cd_sector = tmp[2] | (tmp[3] << 8) | (tmp[4] << 16);
   if (FUNC1(fp, skip + cd_sector * frame_size, SEEK_SET) == -1)
      goto error;

   FUNC0(fp, buffer, 256);
   buffer[256] = '\0';

   tmp = buffer;
   while(*tmp && FUNC4((const char*)tmp, "boot", 4))
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
   *game_id++ = FUNC5(*tmp++);
   *game_id++ = FUNC5(*tmp++);
   *game_id++ = FUNC5(*tmp++);
   *game_id++ = FUNC5(*tmp++);
   *game_id++ = '-';

   if(!FUNC3(*tmp))
      tmp++;

   while(FUNC3(*tmp))
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