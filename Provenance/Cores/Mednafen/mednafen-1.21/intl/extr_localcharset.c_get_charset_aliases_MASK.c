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
 char DIRECTORY_SEPARATOR ; 
 int EOF ; 
 scalar_t__ HAVE_WORKING_O_NOFOLLOW ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  LIBDIR ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 char const* charset_aliases ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 int FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (char*,size_t) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 size_t FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC16 (void)
{
  const char *cp;

  cp = charset_aliases;
  if (cp == NULL)
    {
#if !(defined DARWIN7 || defined VMS || defined WIN32_NATIVE || defined __CYGWIN__)
      const char *dir;
      const char *base = "charset.alias";
      char *file_name;

      /* Make it possible to override the charset.alias location.  This is
         necessary for running the testsuite before "make install".  */
      dir = FUNC7 ("CHARSETALIASDIR");
      if (dir == NULL || dir[0] == '\0')
        dir = FUNC12 (LIBDIR);

      /* Concatenate dir and base into freshly allocated file_name.  */
      {
        size_t dir_len = FUNC14 (dir);
        size_t base_len = FUNC14 (base);
        int add_slash = (dir_len > 0 && !FUNC0 (dir[dir_len - 1]));
        file_name = (char *) FUNC8 (dir_len + add_slash + base_len + 1);
        if (file_name != NULL)
          {
            FUNC9 (file_name, dir, dir_len);
            if (add_slash)
              file_name[dir_len] = DIRECTORY_SEPARATOR;
            FUNC9 (file_name + dir_len + add_slash, base, base_len + 1);
          }
      }

      if (file_name == NULL)
        /* Out of memory.  Treat the file as empty.  */
        cp = "";
      else
        {
          int fd;

          /* Open the file.  Reject symbolic links on platforms that support
             O_NOFOLLOW.  This is a security feature.  Without it, an attacker
             could retrieve parts of the contents (namely, the tail of the
             first line that starts with "* ") of an arbitrary file by placing
             a symbolic link to that file under the name "charset.alias" in
             some writable directory and defining the environment variable
             CHARSETALIASDIR to point to that directory.  */
          fd = FUNC10 (file_name,
                     O_RDONLY | (HAVE_WORKING_O_NOFOLLOW ? O_NOFOLLOW : 0));
          if (fd < 0)
            /* File not found.  Treat it as empty.  */
            cp = "";
          else
            {
              FILE *fp;

              fp = FUNC3 (fd, "r");
              if (fp == NULL)
                {
                  /* Out of memory.  Treat the file as empty.  */
                  FUNC1 (fd);
                  cp = "";
                }
              else
                {
                  /* Parse the file's contents.  */
                  char *res_ptr = NULL;
                  size_t res_size = 0;

                  for (;;)
                    {
                      int c;
                      char buf1[50+1];
                      char buf2[50+1];
                      size_t l1, l2;
                      char *old_res_ptr;

                      c = FUNC6 (fp);
                      if (c == EOF)
                        break;
                      if (c == '\n' || c == ' ' || c == '\t')
                        continue;
                      if (c == '#')
                        {
                          /* Skip comment, to end of line.  */
                          do
                            c = FUNC6 (fp);
                          while (!(c == EOF || c == '\n'));
                          if (c == EOF)
                            break;
                          continue;
                        }
                      FUNC15 (c, fp);
                      if (FUNC5 (fp, "%50s %50s", buf1, buf2) < 2)
                        break;
                      l1 = FUNC14 (buf1);
                      l2 = FUNC14 (buf2);
                      old_res_ptr = res_ptr;
                      if (res_size == 0)
                        {
                          res_size = l1 + 1 + l2 + 1;
                          res_ptr = (char *) FUNC8 (res_size + 1);
                        }
                      else
                        {
                          res_size += l1 + 1 + l2 + 1;
                          res_ptr = (char *) FUNC11 (res_ptr, res_size + 1);
                        }
                      if (res_ptr == NULL)
                        {
                          /* Out of memory. */
                          res_size = 0;
                          if (old_res_ptr != NULL)
                            FUNC4 (old_res_ptr);
                          break;
                        }
                      FUNC13 (res_ptr + res_size - (l2 + 1) - (l1 + 1), buf1);
                      FUNC13 (res_ptr + res_size - (l2 + 1), buf2);
                    }
                  FUNC2 (fp);
                  if (res_size == 0)
                    cp = "";
                  else
                    {
                      *(res_ptr + res_size) = '\0';
                      cp = res_ptr;
                    }
                }
            }

          FUNC4 (file_name);
        }

#else

# if defined DARWIN7
      /* To avoid the trouble of installing a file that is shared by many
         GNU packages -- many packaging systems have problems with this --,
         simply inline the aliases here.  */
      cp = "ISO8859-1" "\0" "ISO-8859-1" "\0"
           "ISO8859-2" "\0" "ISO-8859-2" "\0"
           "ISO8859-4" "\0" "ISO-8859-4" "\0"
           "ISO8859-5" "\0" "ISO-8859-5" "\0"
           "ISO8859-7" "\0" "ISO-8859-7" "\0"
           "ISO8859-9" "\0" "ISO-8859-9" "\0"
           "ISO8859-13" "\0" "ISO-8859-13" "\0"
           "ISO8859-15" "\0" "ISO-8859-15" "\0"
           "KOI8-R" "\0" "KOI8-R" "\0"
           "KOI8-U" "\0" "KOI8-U" "\0"
           "CP866" "\0" "CP866" "\0"
           "CP949" "\0" "CP949" "\0"
           "CP1131" "\0" "CP1131" "\0"
           "CP1251" "\0" "CP1251" "\0"
           "eucCN" "\0" "GB2312" "\0"
           "GB2312" "\0" "GB2312" "\0"
           "eucJP" "\0" "EUC-JP" "\0"
           "eucKR" "\0" "EUC-KR" "\0"
           "Big5" "\0" "BIG5" "\0"
           "Big5HKSCS" "\0" "BIG5-HKSCS" "\0"
           "GBK" "\0" "GBK" "\0"
           "GB18030" "\0" "GB18030" "\0"
           "SJIS" "\0" "SHIFT_JIS" "\0"
           "ARMSCII-8" "\0" "ARMSCII-8" "\0"
           "PT154" "\0" "PT154" "\0"
         /*"ISCII-DEV" "\0" "?" "\0"*/
           "*" "\0" "UTF-8" "\0";
# endif

# if defined VMS
      /* To avoid the troubles of an extra file charset.alias_vms in the
         sources of many GNU packages, simply inline the aliases here.  */
      /* The list of encodings is taken from the OpenVMS 7.3-1 documentation
         "Compaq C Run-Time Library Reference Manual for OpenVMS systems"
         section 10.7 "Handling Different Character Sets".  */
      cp = "ISO8859-1" "\0" "ISO-8859-1" "\0"
           "ISO8859-2" "\0" "ISO-8859-2" "\0"
           "ISO8859-5" "\0" "ISO-8859-5" "\0"
           "ISO8859-7" "\0" "ISO-8859-7" "\0"
           "ISO8859-8" "\0" "ISO-8859-8" "\0"
           "ISO8859-9" "\0" "ISO-8859-9" "\0"
           /* Japanese */
           "eucJP" "\0" "EUC-JP" "\0"
           "SJIS" "\0" "SHIFT_JIS" "\0"
           "DECKANJI" "\0" "DEC-KANJI" "\0"
           "SDECKANJI" "\0" "EUC-JP" "\0"
           /* Chinese */
           "eucTW" "\0" "EUC-TW" "\0"
           "DECHANYU" "\0" "DEC-HANYU" "\0"
           "DECHANZI" "\0" "GB2312" "\0"
           /* Korean */
           "DECKOREAN" "\0" "EUC-KR" "\0";
# endif

# if defined WIN32_NATIVE || defined __CYGWIN__
      /* To avoid the troubles of installing a separate file in the same
         directory as the DLL and of retrieving the DLL's directory at
         runtime, simply inline the aliases here.  */

      cp = "CP936" "\0" "GBK" "\0"
           "CP1361" "\0" "JOHAB" "\0"
           "CP20127" "\0" "ASCII" "\0"
           "CP20866" "\0" "KOI8-R" "\0"
           "CP20936" "\0" "GB2312" "\0"
           "CP21866" "\0" "KOI8-RU" "\0"
           "CP28591" "\0" "ISO-8859-1" "\0"
           "CP28592" "\0" "ISO-8859-2" "\0"
           "CP28593" "\0" "ISO-8859-3" "\0"
           "CP28594" "\0" "ISO-8859-4" "\0"
           "CP28595" "\0" "ISO-8859-5" "\0"
           "CP28596" "\0" "ISO-8859-6" "\0"
           "CP28597" "\0" "ISO-8859-7" "\0"
           "CP28598" "\0" "ISO-8859-8" "\0"
           "CP28599" "\0" "ISO-8859-9" "\0"
           "CP28605" "\0" "ISO-8859-15" "\0"
           "CP38598" "\0" "ISO-8859-8" "\0"
           "CP51932" "\0" "EUC-JP" "\0"
           "CP51936" "\0" "GB2312" "\0"
           "CP51949" "\0" "EUC-KR" "\0"
           "CP51950" "\0" "EUC-TW" "\0"
           "CP54936" "\0" "GB18030" "\0"
           "CP65001" "\0" "UTF-8" "\0";
# endif
#endif

      charset_aliases = cp;
    }

  return cp;
}