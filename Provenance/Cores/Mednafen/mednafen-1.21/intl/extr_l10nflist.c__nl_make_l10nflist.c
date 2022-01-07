
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loaded_l10nfile {char* filename; int decided; struct loaded_l10nfile** successor; struct loaded_l10nfile* next; int * data; } ;


 scalar_t__ IS_ABSOLUTE_PATH (char const*) ;
 int PATH_SEPARATOR ;
 int XPG_CODESET ;
 int XPG_MODIFIER ;
 int XPG_NORM_CODESET ;
 int XPG_TERRITORY ;
 int __argz_count (char const*,size_t) ;
 char* __argz_next (char*,size_t,char*) ;
 int __argz_stringify (char*,size_t,int ) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t pop (int) ;
 char* stpcpy (char*,char const*) ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;

struct loaded_l10nfile *
_nl_make_l10nflist (struct loaded_l10nfile **l10nfile_list,
      const char *dirlist, size_t dirlist_len,
      int mask, const char *language, const char *territory,
      const char *codeset, const char *normalized_codeset,
      const char *modifier,
      const char *filename, int do_allocate)
{
  char *abs_filename;
  struct loaded_l10nfile **lastp;
  struct loaded_l10nfile *retval;
  char *cp;
  size_t dirlist_count;
  size_t entries;
  int cnt;



  if (IS_ABSOLUTE_PATH (language))
    dirlist_len = 0;


  abs_filename = (char *) malloc (dirlist_len
      + strlen (language)
      + ((mask & XPG_TERRITORY) != 0
         ? strlen (territory) + 1 : 0)
      + ((mask & XPG_CODESET) != 0
         ? strlen (codeset) + 1 : 0)
      + ((mask & XPG_NORM_CODESET) != 0
         ? strlen (normalized_codeset) + 1 : 0)
      + ((mask & XPG_MODIFIER) != 0
         ? strlen (modifier) + 1 : 0)
      + 1 + strlen (filename) + 1);

  if (abs_filename == ((void*)0))
    return ((void*)0);


  cp = abs_filename;
  if (dirlist_len > 0)
    {
      memcpy (cp, dirlist, dirlist_len);
      __argz_stringify (cp, dirlist_len, PATH_SEPARATOR);
      cp += dirlist_len;
      cp[-1] = '/';
    }

  cp = stpcpy (cp, language);

  if ((mask & XPG_TERRITORY) != 0)
    {
      *cp++ = '_';
      cp = stpcpy (cp, territory);
    }
  if ((mask & XPG_CODESET) != 0)
    {
      *cp++ = '.';
      cp = stpcpy (cp, codeset);
    }
  if ((mask & XPG_NORM_CODESET) != 0)
    {
      *cp++ = '.';
      cp = stpcpy (cp, normalized_codeset);
    }
  if ((mask & XPG_MODIFIER) != 0)
    {
      *cp++ = '@';
      cp = stpcpy (cp, modifier);
    }

  *cp++ = '/';
  stpcpy (cp, filename);



  lastp = l10nfile_list;
  for (retval = *l10nfile_list; retval != ((void*)0); retval = retval->next)
    if (retval->filename != ((void*)0))
      {
 int compare = strcmp (retval->filename, abs_filename);
 if (compare == 0)

   break;
 if (compare < 0)
   {

     retval = ((void*)0);
     break;
   }

 lastp = &retval->next;
      }

  if (retval != ((void*)0) || do_allocate == 0)
    {
      free (abs_filename);
      return retval;
    }

  dirlist_count = (dirlist_len > 0 ? __argz_count (dirlist, dirlist_len) : 1);


  retval =
    (struct loaded_l10nfile *)
    malloc (sizeof (*retval)
     + (((dirlist_count << pop (mask)) + (dirlist_count > 1 ? 1 : 0))
        * sizeof (struct loaded_l10nfile *)));
  if (retval == ((void*)0))
    {
      free (abs_filename);
      return ((void*)0);
    }

  retval->filename = abs_filename;





  retval->decided = (dirlist_count > 1
       || ((mask & XPG_CODESET) != 0
    && (mask & XPG_NORM_CODESET) != 0));
  retval->data = ((void*)0);

  retval->next = *lastp;
  *lastp = retval;

  entries = 0;
  for (cnt = dirlist_count > 1 ? mask : mask - 1; cnt >= 0; --cnt)
    if ((cnt & ~mask) == 0
 && !((cnt & XPG_CODESET) != 0 && (cnt & XPG_NORM_CODESET) != 0))
      {
 if (dirlist_count > 1)
   {

     char *dir = ((void*)0);

     while ((dir = __argz_next ((char *) dirlist, dirlist_len, dir))
     != ((void*)0))
       retval->successor[entries++]
  = _nl_make_l10nflist (l10nfile_list, dir, strlen (dir) + 1,
          cnt, language, territory, codeset,
          normalized_codeset, modifier, filename,
          1);
   }
 else
   retval->successor[entries++]
     = _nl_make_l10nflist (l10nfile_list, dirlist, dirlist_len,
      cnt, language, territory, codeset,
      normalized_codeset, modifier, filename, 1);
      }
  retval->successor[entries] = ((void*)0);

  return retval;
}
