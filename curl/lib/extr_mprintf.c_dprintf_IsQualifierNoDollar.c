
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static bool dprintf_IsQualifierNoDollar(const char *fmt)
{






  switch(*fmt) {
  case '-': case '+': case ' ': case '#': case '.':
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
  case 'h': case 'l': case 'L': case 'z': case 'q':
  case '*': case 'O':



    return TRUE;

  default:
    return FALSE;
  }
}
