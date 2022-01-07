
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int curl_sslbackend ;
struct TYPE_3__ {char* name; int id; } ;
typedef TYPE_1__ curl_ssl_backend ;
typedef scalar_t__ CURLsslset ;


 scalar_t__ CURLSSLSET_OK ;
 scalar_t__ CURLSSLSET_UNKNOWN_BACKEND ;
 int assert (int) ;
 int atoi (char const*) ;
 scalar_t__ curl_global_sslset (int,char const*,TYPE_1__ const***) ;
 char* curl_version () ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ isdigit (int) ;
 int printf (char*,...) ;
 int stderr ;
 int strcmp (char*,char const*) ;

int main(int argc, char **argv)
{
  const char *name = argc > 1 ? argv[1] : "openssl";
  CURLsslset result;

  if(!strcmp("list", name)) {
    const curl_ssl_backend **list;
    int i;

    result = curl_global_sslset(-1, ((void*)0), &list);
    assert(result == CURLSSLSET_UNKNOWN_BACKEND);

    for(i = 0; list[i]; i++)
      printf("SSL backend #%d: '%s' (ID: %d)\n",
             i, list[i]->name, list[i]->id);

    return 0;
  }
  else if(isdigit((int)(unsigned char)*name)) {
    int id = atoi(name);

    result = curl_global_sslset((curl_sslbackend)id, ((void*)0), ((void*)0));
  }
  else
    result = curl_global_sslset(-1, name, ((void*)0));

  if(result == CURLSSLSET_UNKNOWN_BACKEND) {
    fprintf(stderr, "Unknown SSL backend id: %s\n", name);
    return 1;
  }

  assert(result == CURLSSLSET_OK);

  printf("Version with SSL backend '%s':\n\n\t%s\n", name, curl_version());

  return 0;
}
