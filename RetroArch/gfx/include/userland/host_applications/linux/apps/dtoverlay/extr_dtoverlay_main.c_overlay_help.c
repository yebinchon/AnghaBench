
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OVERLAY_HELP_STATE_T ;


 int README_FILE ;
 int fatal_error (char*,...) ;
 int free_string (char const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int overlay_help_close (int *) ;
 char* overlay_help_field_data (int *) ;
 scalar_t__ overlay_help_find (int *,char const*) ;
 scalar_t__ overlay_help_find_field (int *,char*) ;
 int * overlay_help_open (char const*) ;
 int overlay_help_print_field (int *,char*,char*,int,int ) ;
 int overlay_src_dir ;
 int printf (char*,char const*) ;
 char* sprintf_dup (char*,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcspn (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void overlay_help(const char *overlay, const char **params)
{
    OVERLAY_HELP_STATE_T *state;
    const char *readme_path = sprintf_dup("%s/%s", overlay_src_dir,
       README_FILE);

    state = overlay_help_open(readme_path);
    free_string(readme_path);

    if (state)
    {
 if (strcmp(overlay, "dtparam") == 0)
     overlay = "<The base DTB>";

 if (overlay_help_find(state, overlay))
 {
     if (params && overlay_help_find_field(state, "Params"))
     {
  int in_param = 0;

  while (1)
  {
      const char *line = overlay_help_field_data(state);
      if (!line)
   break;
      if (line[0] == '\0')
   continue;
      if (line[0] != ' ')
      {

   int param_len = strcspn(line, " ");
   const char **p = params;
   const char **q = p;
   in_param = 0;
   while (*p)
   {
       if ((param_len == strlen(*p)) &&
    (memcmp(line, *p, param_len) == 0))
    in_param = 1;
       else
    *(q++) = *p;
       p++;
   }
   *(q++) = 0;
      }
      if (in_param)
   printf("%s\n", line);
  }


  if (*params)
      fatal_error("Unknown parameter '%s'", *params);
     }
     else
     {
  printf("Name:   %s\n\n", overlay);
  overlay_help_print_field(state, "Info", "Info:", 8, 0);
  overlay_help_print_field(state, "Load", "Usage:", 8, 0);
  overlay_help_print_field(state, "Params", "Params:", 8, 0);
     }
 }
 else
 {
     fatal_error("No help found for overlay '%s'", overlay);
 }
 overlay_help_close(state);
    }
    else
    {
 fatal_error("Help file not found");
    }
}
