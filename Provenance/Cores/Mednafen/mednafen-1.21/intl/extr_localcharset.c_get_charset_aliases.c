
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char DIRECTORY_SEPARATOR ;
 int EOF ;
 scalar_t__ HAVE_WORKING_O_NOFOLLOW ;
 int ISSLASH (char const) ;
 int LIBDIR ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 char const* charset_aliases ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 int fscanf (int *,char*,char*,char*) ;
 int getc (int *) ;
 char* getenv (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int open (char*,int) ;
 scalar_t__ realloc (char*,size_t) ;
 char* relocate (int ) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;
 int ungetc (int,int *) ;

__attribute__((used)) static const char *
get_charset_aliases (void)
{
  const char *cp;

  cp = charset_aliases;
  if (cp == ((void*)0))
    {

      const char *dir;
      const char *base = "charset.alias";
      char *file_name;



      dir = getenv ("CHARSETALIASDIR");
      if (dir == ((void*)0) || dir[0] == '\0')
        dir = relocate (LIBDIR);


      {
        size_t dir_len = strlen (dir);
        size_t base_len = strlen (base);
        int add_slash = (dir_len > 0 && !ISSLASH (dir[dir_len - 1]));
        file_name = (char *) malloc (dir_len + add_slash + base_len + 1);
        if (file_name != ((void*)0))
          {
            memcpy (file_name, dir, dir_len);
            if (add_slash)
              file_name[dir_len] = DIRECTORY_SEPARATOR;
            memcpy (file_name + dir_len + add_slash, base, base_len + 1);
          }
      }

      if (file_name == ((void*)0))

        cp = "";
      else
        {
          int fd;
          fd = open (file_name,
                     O_RDONLY | (HAVE_WORKING_O_NOFOLLOW ? O_NOFOLLOW : 0));
          if (fd < 0)

            cp = "";
          else
            {
              FILE *fp;

              fp = fdopen (fd, "r");
              if (fp == ((void*)0))
                {

                  close (fd);
                  cp = "";
                }
              else
                {

                  char *res_ptr = ((void*)0);
                  size_t res_size = 0;

                  for (;;)
                    {
                      int c;
                      char buf1[50+1];
                      char buf2[50+1];
                      size_t l1, l2;
                      char *old_res_ptr;

                      c = getc (fp);
                      if (c == EOF)
                        break;
                      if (c == '\n' || c == ' ' || c == '\t')
                        continue;
                      if (c == '#')
                        {

                          do
                            c = getc (fp);
                          while (!(c == EOF || c == '\n'));
                          if (c == EOF)
                            break;
                          continue;
                        }
                      ungetc (c, fp);
                      if (fscanf (fp, "%50s %50s", buf1, buf2) < 2)
                        break;
                      l1 = strlen (buf1);
                      l2 = strlen (buf2);
                      old_res_ptr = res_ptr;
                      if (res_size == 0)
                        {
                          res_size = l1 + 1 + l2 + 1;
                          res_ptr = (char *) malloc (res_size + 1);
                        }
                      else
                        {
                          res_size += l1 + 1 + l2 + 1;
                          res_ptr = (char *) realloc (res_ptr, res_size + 1);
                        }
                      if (res_ptr == ((void*)0))
                        {

                          res_size = 0;
                          if (old_res_ptr != ((void*)0))
                            free (old_res_ptr);
                          break;
                        }
                      strcpy (res_ptr + res_size - (l2 + 1) - (l1 + 1), buf1);
                      strcpy (res_ptr + res_size - (l2 + 1), buf2);
                    }
                  fclose (fp);
                  if (res_size == 0)
                    cp = "";
                  else
                    {
                      *(res_ptr + res_size) = '\0';
                      cp = res_ptr;
                    }
                }
            }

          free (file_name);
        }
      charset_aliases = cp;
    }

  return cp;
}
