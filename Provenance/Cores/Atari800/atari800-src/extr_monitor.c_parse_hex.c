
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;


 int FALSE ;
 int TRUE ;
 int Util_sscanhex (char const*) ;
 int find_label_value (char const*) ;
 int printf (char*,char const*,int,int) ;

__attribute__((used)) static int parse_hex(const char *s, UWORD *hexval)
{
 int x = Util_sscanhex(s);
 if (x < 0 || x > 0xffff)
  return FALSE;
 *hexval = (UWORD) x;
 return TRUE;
}
