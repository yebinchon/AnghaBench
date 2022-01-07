
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MSGCTXT_SEPARATOR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int free (char*) ;
 int * last_logfile ;
 char* last_logfilename ;
 scalar_t__ malloc (int) ;
 int print_escaped (int *,char const*,char const*) ;
 int putc (char,int *) ;
 char* strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void
_nl_log_untranslated_locked (const char *logfilename, const char *domainname,
                             const char *msgid1, const char *msgid2, int plural)
{
  FILE *logfile;
  const char *separator;


  if (last_logfilename == ((void*)0) || strcmp (logfilename, last_logfilename) != 0)
    {

      if (last_logfilename != ((void*)0))
        {
          if (last_logfile != ((void*)0))
            {
              fclose (last_logfile);
              last_logfile = ((void*)0);
            }
          free (last_logfilename);
          last_logfilename = ((void*)0);
        }

      last_logfilename = (char *) malloc (strlen (logfilename) + 1);
      if (last_logfilename == ((void*)0))
        return;
      strcpy (last_logfilename, logfilename);
      last_logfile = fopen (logfilename, "a");
      if (last_logfile == ((void*)0))
        return;
    }
  logfile = last_logfile;

  fprintf (logfile, "domain ");
  print_escaped (logfile, domainname, domainname + strlen (domainname));
  separator = strchr (msgid1, MSGCTXT_SEPARATOR);
  if (separator != ((void*)0))
    {

      fprintf (logfile, "\nmsgctxt ");
      print_escaped (logfile, msgid1, separator);
      msgid1 = separator + 1;
    }
  fprintf (logfile, "\nmsgid ");
  print_escaped (logfile, msgid1, msgid1 + strlen (msgid1));
  if (plural)
    {
      fprintf (logfile, "\nmsgid_plural ");
      print_escaped (logfile, msgid2, msgid2 + strlen (msgid2));
      fprintf (logfile, "\nmsgstr[0] \"\"\n");
    }
  else
    fprintf (logfile, "\nmsgstr \"\"\n");
  putc ('\n', logfile);
}
