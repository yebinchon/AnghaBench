
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef int buf ;


 int content_get_subsystem_rom (unsigned int) ;
 int content_get_subsystem_rom_id () ;
 char* path_basename (int ) ;
 int string_is_empty (char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int action_bind_sublabel_subsystem_load(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   unsigned j = 0;
   char buf[4096];

   buf[0] = '\0';

   for (j = 0; j < content_get_subsystem_rom_id(); j++)
   {
      strlcat(buf, "   ", sizeof(buf));
      strlcat(buf, path_basename(content_get_subsystem_rom(j)), sizeof(buf));
      if (j != content_get_subsystem_rom_id() - 1)
         strlcat(buf, "\n", sizeof(buf));
   }

   if (!string_is_empty(buf))
      strlcpy(s, buf, len);

   return 0;
}
