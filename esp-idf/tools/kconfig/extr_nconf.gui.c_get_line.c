
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *get_line(const char *text, int line_no)
{
 int i;
 int lines = 0;

 if (!text)
  return 0;

 for (i = 0; text[i] != '\0' && lines < line_no; i++)
  if (text[i] == '\n')
   lines++;
 return text+i;
}
