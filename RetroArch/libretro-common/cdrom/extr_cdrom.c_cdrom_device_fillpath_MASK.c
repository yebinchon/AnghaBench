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

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t,char*,unsigned char) ; 
 size_t FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

void FUNC3(char *path, size_t len, char drive, unsigned char track, bool is_cue)
{
   size_t pos = 0;

   if (!path || len == 0)
      return;

   if (is_cue)
   {
#ifdef _WIN32
      pos = strlcpy(path, "cdrom://", len);

      if (len > pos)
         path[pos++] = drive;

      pos = strlcat(path, ":/drive.cue", len);
#else
#ifdef __linux__
      pos = FUNC2(path, "cdrom://drive", len);

      if (len > pos + 1)
      {
         path[pos++] = drive;
         path[pos] = '\0';
      }

      pos = FUNC1(path, ".cue", len);
#endif
#endif
   }
   else
   {
#ifdef _WIN32
      pos = strlcpy(path, "cdrom://", len);

      if (len > pos + 1)
      {
         path[pos++] = drive;
         path[pos] = '\0';
      }

      pos += snprintf(path + pos, len - pos, ":/drive-track%02d.bin", track);
#else
#ifdef __linux__
      pos = FUNC2(path, "cdrom://drive", len);

      if (len > pos)
         path[pos++] = drive;

      pos += FUNC0(path + pos, len - pos, "-track%02d.bin", track);
#endif
#endif
   }
}