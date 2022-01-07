
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (char*,size_t,char*,unsigned char) ;
 size_t strlcat (char*,char*,size_t) ;
 size_t strlcpy (char*,char*,size_t) ;

void cdrom_device_fillpath(char *path, size_t len, char drive, unsigned char track, bool is_cue)
{
   size_t pos = 0;

   if (!path || len == 0)
      return;

   if (is_cue)
   {
      pos = strlcpy(path, "cdrom://drive", len);

      if (len > pos + 1)
      {
         path[pos++] = drive;
         path[pos] = '\0';
      }

      pos = strlcat(path, ".cue", len);


   }
   else
   {
      pos = strlcpy(path, "cdrom://drive", len);

      if (len > pos)
         path[pos++] = drive;

      pos += snprintf(path + pos, len - pos, "-track%02d.bin", track);


   }
}
