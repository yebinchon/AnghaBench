
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int EOVERFLOW ;
 size_t INT_MAX ;
 int errno ;
 int free (char*) ;
 char* libintl_vasnprintf (char*,size_t*,char const*,int ) ;
 int * strchr (char const*,char) ;
 int vsprintf (char*,char const*,int ) ;

int
libintl_vsprintf (char *resultbuf, const char *format, va_list args)
{
  if (strchr (format, '$') == ((void*)0))
    return vsprintf (resultbuf, format, args);
  else
    {
      size_t length = (size_t) ~0 / (4 * sizeof (char));
      char *result = libintl_vasnprintf (resultbuf, &length, format, args);
      if (result != resultbuf)
        {
          free (result);
          return -1;
        }
      if (length > INT_MAX)
        {
          errno = EOVERFLOW;
          return -1;
        }
      else
        return length;
    }
}
