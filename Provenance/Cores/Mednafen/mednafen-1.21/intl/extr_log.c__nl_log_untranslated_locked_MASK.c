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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSGCTXT_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * last_logfile ; 
 char* last_logfilename ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static inline void
FUNC11 (const char *logfilename, const char *domainname,
                             const char *msgid1, const char *msgid2, int plural)
{
  FILE *logfile;
  const char *separator;

  /* Can we reuse the last opened logfile?  */
  if (last_logfilename == NULL || FUNC8 (logfilename, last_logfilename) != 0)
    {
      /* Close the last used logfile.  */
      if (last_logfilename != NULL)
        {
          if (last_logfile != NULL)
            {
              FUNC0 (last_logfile);
              last_logfile = NULL;
            }
          FUNC3 (last_logfilename);
          last_logfilename = NULL;
        }
      /* Open the logfile.  */
      last_logfilename = (char *) FUNC4 (FUNC10 (logfilename) + 1);
      if (last_logfilename == NULL)
        return;
      FUNC9 (last_logfilename, logfilename);
      last_logfile = FUNC1 (logfilename, "a");
      if (last_logfile == NULL)
        return;
    }
  logfile = last_logfile;

  FUNC2 (logfile, "domain ");
  FUNC5 (logfile, domainname, domainname + FUNC10 (domainname));
  separator = FUNC7 (msgid1, MSGCTXT_SEPARATOR);
  if (separator != NULL)
    {
      /* The part before the MSGCTXT_SEPARATOR is the msgctxt.  */
      FUNC2 (logfile, "\nmsgctxt ");
      FUNC5 (logfile, msgid1, separator);
      msgid1 = separator + 1;
    }
  FUNC2 (logfile, "\nmsgid ");
  FUNC5 (logfile, msgid1, msgid1 + FUNC10 (msgid1));
  if (plural)
    {
      FUNC2 (logfile, "\nmsgid_plural ");
      FUNC5 (logfile, msgid2, msgid2 + FUNC10 (msgid2));
      FUNC2 (logfile, "\nmsgstr[0] \"\"\n");
    }
  else
    FUNC2 (logfile, "\nmsgstr \"\"\n");
  FUNC6 ('\n', logfile);
}