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

/* Variables and functions */
 int XPG_CODESET ; 
 int XPG_MODIFIER ; 
 int XPG_NORM_CODESET ; 
 int XPG_TERRITORY ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

int
FUNC5 (char *name,
		  const char **language, const char **modifier,
		  const char **territory, const char **codeset,
		  const char **normalized_codeset)
{
  char *cp;
  int mask;

  *modifier = NULL;
  *territory = NULL;
  *codeset = NULL;
  *normalized_codeset = NULL;

  /* Now we determine the single parts of the locale name.  First
     look for the language.  Termination symbols are `_', '.', and `@'.  */
  mask = 0;
  *language = cp = name;
  cp = FUNC0 (*language);

  if (*language == cp)
    /* This does not make sense: language has to be specified.  Use
       this entry as it is without exploding.  Perhaps it is an alias.  */
    cp = FUNC3 (*language, '\0');
  else
    {
      if (cp[0] == '_')
	{
	  /* Next is the territory.  */
	  cp[0] = '\0';
	  *territory = ++cp;

	  while (cp[0] != '\0' && cp[0] != '.' && cp[0] != '@')
	    ++cp;

	  mask |= XPG_TERRITORY;
	}

      if (cp[0] == '.')
	{
	  /* Next is the codeset.  */
	  cp[0] = '\0';
	  *codeset = ++cp;

	  while (cp[0] != '\0' && cp[0] != '@')
	    ++cp;

	  mask |= XPG_CODESET;

	  if (*codeset != cp && (*codeset)[0] != '\0')
	    {
	      *normalized_codeset = FUNC1 (*codeset,
							   cp - *codeset);
	      if (*normalized_codeset == NULL)
		return -1;
	      else if (FUNC4 (*codeset, *normalized_codeset) == 0)
		FUNC2 ((char *) *normalized_codeset);
	      else
		mask |= XPG_NORM_CODESET;
	    }
	}
    }

  if (cp[0] == '@')
    {
      /* Next is the modifier.  */
      cp[0] = '\0';
      *modifier = ++cp;

      if (cp[0] != '\0')
	mask |= XPG_MODIFIER;
    }

  if (*territory != NULL && (*territory)[0] == '\0')
    mask &= ~XPG_TERRITORY;

  if (*codeset != NULL && (*codeset)[0] == '\0')
    mask &= ~XPG_CODESET;

  return mask;
}