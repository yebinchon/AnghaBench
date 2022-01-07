
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void frontend_switch_get_name(char *s, size_t len)
{

   strlcpy(s, "Nintendo Switch", len);
}
