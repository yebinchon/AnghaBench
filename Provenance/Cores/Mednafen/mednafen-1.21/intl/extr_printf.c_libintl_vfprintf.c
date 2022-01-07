
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int EOVERFLOW ;
 size_t INT_MAX ;
 int errno ;
 int free (char*) ;
 size_t fwrite (char*,int,size_t,int *) ;
 char* libintl_vasnprintf (int *,size_t*,char const*,int ) ;
 int * strchr (char const*,char) ;
 int vfprintf (int *,char const*,int ) ;

int
libintl_vfprintf (FILE *stream, const char *format, va_list args)
{
  if (strchr (format, '$') == ((void*)0))
    return vfprintf (stream, format, args);
  else
    {
      size_t length;
      char *result = libintl_vasnprintf (((void*)0), &length, format, args);
      int retval = -1;
      if (result != ((void*)0))
        {
          size_t written = fwrite (result, 1, length, stream);
          free (result);
          if (written == length)
            {
              if (length > INT_MAX)
                errno = EOVERFLOW;
              else
                retval = length;
            }
        }
      return retval;
    }
}
