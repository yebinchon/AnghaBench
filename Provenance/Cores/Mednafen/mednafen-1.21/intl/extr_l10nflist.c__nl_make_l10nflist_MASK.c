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
struct loaded_l10nfile {char* filename; int decided; struct loaded_l10nfile** successor; struct loaded_l10nfile* next; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  PATH_SEPARATOR ; 
 int XPG_CODESET ; 
 int XPG_MODIFIER ; 
 int XPG_NORM_CODESET ; 
 int XPG_TERRITORY ; 
 int FUNC1 (char const*,size_t) ; 
 char* FUNC2 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 size_t FUNC7 (int) ; 
 char* FUNC8 (char*,char const*) ; 
 int FUNC9 (char*,char*) ; 
 int FUNC10 (char const*) ; 

struct loaded_l10nfile *
FUNC11 (struct loaded_l10nfile **l10nfile_list,
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

  /* If LANGUAGE contains an absolute directory specification, we ignore
     DIRLIST.  */
  if (FUNC0 (language))
    dirlist_len = 0;

  /* Allocate room for the full file name.  */
  abs_filename = (char *) FUNC5 (dirlist_len
				  + FUNC10 (language)
				  + ((mask & XPG_TERRITORY) != 0
				     ? FUNC10 (territory) + 1 : 0)
				  + ((mask & XPG_CODESET) != 0
				     ? FUNC10 (codeset) + 1 : 0)
				  + ((mask & XPG_NORM_CODESET) != 0
				     ? FUNC10 (normalized_codeset) + 1 : 0)
				  + ((mask & XPG_MODIFIER) != 0
				     ? FUNC10 (modifier) + 1 : 0)
				  + 1 + FUNC10 (filename) + 1);

  if (abs_filename == NULL)
    return NULL;

  /* Construct file name.  */
  cp = abs_filename;
  if (dirlist_len > 0)
    {
      FUNC6 (cp, dirlist, dirlist_len);
      FUNC3 (cp, dirlist_len, PATH_SEPARATOR);
      cp += dirlist_len;
      cp[-1] = '/';
    }

  cp = FUNC8 (cp, language);

  if ((mask & XPG_TERRITORY) != 0)
    {
      *cp++ = '_';
      cp = FUNC8 (cp, territory);
    }
  if ((mask & XPG_CODESET) != 0)
    {
      *cp++ = '.';
      cp = FUNC8 (cp, codeset);
    }
  if ((mask & XPG_NORM_CODESET) != 0)
    {
      *cp++ = '.';
      cp = FUNC8 (cp, normalized_codeset);
    }
  if ((mask & XPG_MODIFIER) != 0)
    {
      *cp++ = '@';
      cp = FUNC8 (cp, modifier);
    }

  *cp++ = '/';
  FUNC8 (cp, filename);

  /* Look in list of already loaded domains whether it is already
     available.  */
  lastp = l10nfile_list;
  for (retval = *l10nfile_list; retval != NULL; retval = retval->next)
    if (retval->filename != NULL)
      {
	int compare = FUNC9 (retval->filename, abs_filename);
	if (compare == 0)
	  /* We found it!  */
	  break;
	if (compare < 0)
	  {
	    /* It's not in the list.  */
	    retval = NULL;
	    break;
	  }

	lastp = &retval->next;
      }

  if (retval != NULL || do_allocate == 0)
    {
      FUNC4 (abs_filename);
      return retval;
    }

  dirlist_count = (dirlist_len > 0 ? FUNC1 (dirlist, dirlist_len) : 1);

  /* Allocate a new loaded_l10nfile.  */
  retval =
    (struct loaded_l10nfile *)
    FUNC5 (sizeof (*retval)
	    + (((dirlist_count << FUNC7 (mask)) + (dirlist_count > 1 ? 1 : 0))
	       * sizeof (struct loaded_l10nfile *)));
  if (retval == NULL)
    {
      FUNC4 (abs_filename);
      return NULL;
    }

  retval->filename = abs_filename;

  /* We set retval->data to NULL here; it is filled in later.
     Setting retval->decided to 1 here means that retval does not
     correspond to a real file (dirlist_count > 1) or is not worth
     looking up (if an unnormalized codeset was specified).  */
  retval->decided = (dirlist_count > 1
		     || ((mask & XPG_CODESET) != 0
			 && (mask & XPG_NORM_CODESET) != 0));
  retval->data = NULL;

  retval->next = *lastp;
  *lastp = retval;

  entries = 0;
  /* Recurse to fill the inheritance list of RETVAL.
     If the DIRLIST is a real list (i.e. DIRLIST_COUNT > 1), the RETVAL
     entry does not correspond to a real file; retval->filename contains
     colons.  In this case we loop across all elements of DIRLIST and
     across all bit patterns dominated by MASK.
     If the DIRLIST is a single directory or entirely redundant (i.e.
     DIRLIST_COUNT == 1), we loop across all bit patterns dominated by
     MASK, excluding MASK itself.
     In either case, we loop down from MASK to 0.  This has the effect
     that the extra bits in the locale name are dropped in this order:
     first the modifier, then the territory, then the codeset, then the
     normalized_codeset.  */
  for (cnt = dirlist_count > 1 ? mask : mask - 1; cnt >= 0; --cnt)
    if ((cnt & ~mask) == 0
	&& !((cnt & XPG_CODESET) != 0 && (cnt & XPG_NORM_CODESET) != 0))
      {
	if (dirlist_count > 1)
	  {
	    /* Iterate over all elements of the DIRLIST.  */
	    char *dir = NULL;

	    while ((dir = FUNC2 ((char *) dirlist, dirlist_len, dir))
		   != NULL)
	      retval->successor[entries++]
		= FUNC11 (l10nfile_list, dir, FUNC10 (dir) + 1,
				      cnt, language, territory, codeset,
				      normalized_codeset, modifier, filename,
				      1);
	  }
	else
	  retval->successor[entries++]
	    = FUNC11 (l10nfile_list, dirlist, dirlist_len,
				  cnt, language, territory, codeset,
				  normalized_codeset, modifier, filename, 1);
      }
  retval->successor[entries] = NULL;

  return retval;
}