
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;

bool Curl_auth_user_contains_domain(const char *user)
{
  bool valid = FALSE;

  if(user && *user) {

    char *p = strpbrk(user, "\\/@");

    valid = (p != ((void*)0) && p > user && p < user + strlen(user) - 1 ? TRUE :
                                                                    FALSE);
  }







  return valid;
}
