
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lprintf (char*,char*) ;
 int plat_get_root_dir (char*,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

void emu_make_path(char *buff, const char *end, int size)
{
 int pos, end_len;

 end_len = strlen(end);
 pos = plat_get_root_dir(buff, size);
 strncpy(buff + pos, end, size - pos);
 buff[size - 1] = 0;
 if (pos + end_len > size - 1)
  lprintf("Warning: path truncated: %s\n", buff);
}
