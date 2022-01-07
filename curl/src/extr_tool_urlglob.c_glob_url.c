
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int text ;
struct TYPE_6__ {char* glob_buffer; char* error; scalar_t__ pos; scalar_t__ urllen; } ;
typedef TYPE_1__ URLGlob ;
typedef int FILE ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_safefree (char*) ;
 TYPE_1__* calloc (int,int) ;
 int fprintf (int *,char*,int,char const*) ;
 int glob_cleanup (TYPE_1__*) ;
 int glob_parse (TYPE_1__*,char*,int,unsigned long*) ;
 char* malloc (scalar_t__) ;
 int msnprintf (char*,int,char*,char*,scalar_t__,char*,scalar_t__,char*) ;
 scalar_t__ strlen (char*) ;

CURLcode glob_url(URLGlob **glob, char *url, unsigned long *urlnum,
                  FILE *error)
{




  URLGlob *glob_expand;
  unsigned long amount = 0;
  char *glob_buffer;
  CURLcode res;

  *glob = ((void*)0);

  glob_buffer = malloc(strlen(url) + 1);
  if(!glob_buffer)
    return CURLE_OUT_OF_MEMORY;
  glob_buffer[0] = 0;

  glob_expand = calloc(1, sizeof(URLGlob));
  if(!glob_expand) {
    Curl_safefree(glob_buffer);
    return CURLE_OUT_OF_MEMORY;
  }
  glob_expand->urllen = strlen(url);
  glob_expand->glob_buffer = glob_buffer;

  res = glob_parse(glob_expand, url, 1, &amount);
  if(!res)
    *urlnum = amount;
  else {
    if(error && glob_expand->error) {
      char text[512];
      const char *t;
      if(glob_expand->pos) {
        msnprintf(text, sizeof(text), "%s in URL position %zu:\n%s\n%*s^",
                  glob_expand->error,
                  glob_expand->pos, url, glob_expand->pos - 1, " ");
        t = text;
      }
      else
        t = glob_expand->error;


      fprintf(error, "curl: (%d) %s\n", res, t);
    }

    glob_cleanup(glob_expand);
    *urlnum = 1;
    return res;
  }

  *glob = glob_expand;
  return CURLE_OK;
}
