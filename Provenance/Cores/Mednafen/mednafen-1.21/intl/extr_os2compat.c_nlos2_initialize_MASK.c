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
 char* LIBDIR ; 
 char* LOCALEDIR ; 
 char* LOCALE_ALIAS_PATH ; 
 int MAXPATHLEN ; 
 char* _nlos2_libdir ; 
 char* _nlos2_localealiaspath ; 
 char* _nlos2_localedir ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  libintl_nl_default_dirname ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static __attribute__((constructor)) void
FUNC5 ()
{
  char *root = FUNC0 ("UNIXROOT");
  char *gnulocaledir = FUNC0 ("GNULOCALEDIR");

  _nlos2_libdir = gnulocaledir;
  if (!_nlos2_libdir)
    {
      if (root)
        {
          size_t sl = FUNC4 (root);
          _nlos2_libdir = (char *) FUNC1 (sl + FUNC4 (LIBDIR) + 1);
          FUNC2 (_nlos2_libdir, root, sl);
          FUNC2 (_nlos2_libdir + sl, LIBDIR, FUNC4 (LIBDIR) + 1);
        }
      else
        _nlos2_libdir = LIBDIR;
    }

  _nlos2_localealiaspath = gnulocaledir;
  if (!_nlos2_localealiaspath)
    {
      if (root)
        {
          size_t sl = FUNC4 (root);
          _nlos2_localealiaspath = (char *) FUNC1 (sl + FUNC4 (LOCALE_ALIAS_PATH) + 1);
          FUNC2 (_nlos2_localealiaspath, root, sl);
          FUNC2 (_nlos2_localealiaspath + sl, LOCALE_ALIAS_PATH, FUNC4 (LOCALE_ALIAS_PATH) + 1);
        }
     else
        _nlos2_localealiaspath = LOCALE_ALIAS_PATH;
    }

  _nlos2_localedir = gnulocaledir;
  if (!_nlos2_localedir)
    {
      if (root)
        {
          size_t sl = FUNC4 (root);
          _nlos2_localedir = (char *) FUNC1 (sl + FUNC4 (LOCALEDIR) + 1);
          FUNC2 (_nlos2_localedir, root, sl);
          FUNC2 (_nlos2_localedir + sl, LOCALEDIR, FUNC4 (LOCALEDIR) + 1);
        }
      else
        _nlos2_localedir = LOCALEDIR;
    }

  if (FUNC4 (_nlos2_localedir) <= MAXPATHLEN)
    FUNC3 (libintl_nl_default_dirname, _nlos2_localedir);
}