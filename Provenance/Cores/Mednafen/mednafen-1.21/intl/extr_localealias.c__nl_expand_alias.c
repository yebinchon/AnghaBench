
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alias_map {char const* alias; char* value; } ;


 char* LOCALE_ALIAS_PATH ;
 char const PATH_SEPARATOR ;
 int __libc_lock_lock (int ) ;
 int __libc_lock_unlock (int ) ;
 scalar_t__ alias_compare ;
 scalar_t__ bsearch (struct alias_map*,int ,scalar_t__,int,int (*) (void const*,void const*)) ;
 int lock ;
 int map ;
 scalar_t__ nmap ;
 size_t read_alias_file (char const*,int) ;

const char *
_nl_expand_alias (const char *name)
{
  static const char *locale_alias_path;
  struct alias_map *retval;
  const char *result = ((void*)0);
  size_t added;

  __libc_lock_lock (lock);

  if (locale_alias_path == ((void*)0))
    locale_alias_path = LOCALE_ALIAS_PATH;

  do
    {
      struct alias_map item;

      item.alias = name;

      if (nmap > 0)
 retval = (struct alias_map *) bsearch (&item, map, nmap,
            sizeof (struct alias_map),
            (int (*) (const void *,
        const void *)
      ) alias_compare);
      else
 retval = ((void*)0);


      if (retval != ((void*)0))
 {
   result = retval->value;
   break;
 }


      added = 0;
      while (added == 0 && locale_alias_path[0] != '\0')
 {
   const char *start;

   while (locale_alias_path[0] == PATH_SEPARATOR)
     ++locale_alias_path;
   start = locale_alias_path;

   while (locale_alias_path[0] != '\0'
   && locale_alias_path[0] != PATH_SEPARATOR)
     ++locale_alias_path;

   if (start < locale_alias_path)
     added = read_alias_file (start, locale_alias_path - start);
 }
    }
  while (added != 0);

  __libc_lock_unlock (lock);

  return result;
}
