
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {char* label; char* path; } ;


 int PATH_MAX_LENGTH ;
 scalar_t__ calloc (int,int) ;
 int fill_short_pathname_representation (char*,char*,int) ;
 int free (char*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ string_is_empty (char*) ;

__attribute__((used)) static int playlist_qsort_func(const struct playlist_entry *a,
      const struct playlist_entry *b)
{
   char *a_str = ((void*)0);
   char *b_str = ((void*)0);
   char *a_fallback_label = ((void*)0);
   char *b_fallback_label = ((void*)0);
   int ret = 0;

   if (!a || !b)
      goto end;

   a_str = a->label;
   b_str = b->label;





   if (string_is_empty(a_str))
   {
      if (string_is_empty(a->path))
         goto end;

      a_fallback_label = (char*)calloc(PATH_MAX_LENGTH, sizeof(char));

      if (!a_fallback_label)
         goto end;

      fill_short_pathname_representation(a_fallback_label, a->path, PATH_MAX_LENGTH * sizeof(char));

      if (string_is_empty(a_fallback_label))
         goto end;

      a_str = a_fallback_label;
   }

   if (string_is_empty(b_str))
   {
      if (string_is_empty(b->path))
         goto end;

      b_fallback_label = (char*)calloc(PATH_MAX_LENGTH, sizeof(char));

      if (!b_fallback_label)
         goto end;

      fill_short_pathname_representation(b_fallback_label, b->path, PATH_MAX_LENGTH * sizeof(char));

      if (string_is_empty(b_fallback_label))
         goto end;

      b_str = b_fallback_label;
   }

   ret = strcasecmp(a_str, b_str);

end:

   a_str = ((void*)0);
   b_str = ((void*)0);

   if (a_fallback_label)
   {
      free(a_fallback_label);
      a_fallback_label = ((void*)0);
   }

   if (b_fallback_label)
   {
      free(b_fallback_label);
      b_fallback_label = ((void*)0);
   }

   return ret;
}
