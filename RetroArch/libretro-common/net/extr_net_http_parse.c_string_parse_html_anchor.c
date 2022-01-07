
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,size_t) ;
 char* strcasestr (char const*,char*) ;
 char* strstr (char const*,char*) ;

int string_parse_html_anchor(const char *line, char *link, char *name,
      size_t link_size, size_t name_size)
{
   if (!line || !link || !name)
      return 1;

   memset(link, 0, link_size);
   memset(name, 0, name_size);

   line = strcasestr(line, "<a href=\"");

   if (!line)
      return 1;

   line += 9;

   if (line && *line)
   {
      if (!*link)
      {
         const char *end = strstr(line, "\"");

         if (!end)
            return 1;

         memcpy(link, line, end - line);

         *(link + (end - line)) = '\0';
         line += end - line;
      }

      if (!*name)
      {
         const char *start = strstr(line, "\">");
         const char *end = start ? strstr(start, "</a>") : ((void*)0);

         if (!start || !end)
            return 1;

         memcpy(name, start + 2, end - start - 2);

         *(name + (end - start - 2)) = '\0';
      }
   }

   return 0;
}
