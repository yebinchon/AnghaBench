
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_handler {int flags; } ;
struct Curl_URL {char* user; char* password; char* options; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLUcode ;


 int CURLUE_MALFORMED_INPUT ;
 int CURLUE_OK ;
 int CURLUE_USER_NOT_ALLOWED ;
 unsigned int CURLU_DISALLOW_USER ;
 scalar_t__ Curl_parse_login_details (char*,int,char**,char**,char**) ;
 int PROTOPT_URLOPTIONS ;
 int free (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static CURLUcode parse_hostname_login(struct Curl_URL *u,
                                      const struct Curl_handler *h,
                                      char **hostname,
                                      unsigned int flags)
{
  CURLUcode result = CURLUE_OK;
  CURLcode ccode;
  char *userp = ((void*)0);
  char *passwdp = ((void*)0);
  char *optionsp = ((void*)0);
  char *ptr = strchr(*hostname, '@');
  char *login = *hostname;

  if(!ptr)
    goto out;




  *hostname = ++ptr;



  ccode = Curl_parse_login_details(login, ptr - login - 1,
                                   &userp, &passwdp,
                                   (h && (h->flags & PROTOPT_URLOPTIONS)) ?
                                   &optionsp:((void*)0));
  if(ccode) {
    result = CURLUE_MALFORMED_INPUT;
    goto out;
  }

  if(userp) {
    if(flags & CURLU_DISALLOW_USER) {

      result = CURLUE_USER_NOT_ALLOWED;
      goto out;
    }

    u->user = userp;
  }

  if(passwdp)
    u->password = passwdp;

  if(optionsp)
    u->options = optionsp;

  return CURLUE_OK;
  out:

  free(userp);
  free(passwdp);
  free(optionsp);

  return result;
}
