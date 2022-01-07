
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cookie_engine; } ;
struct Curl_easy {TYPE_1__ state; } ;
struct CookieInfo {int newsession; void* running; int filename; } ;
typedef int FILE ;


 int Curl_cookie_add (struct Curl_easy*,struct CookieInfo*,int,void*,char*,int *,int *,void*) ;
 int Curl_cookie_cleanup (struct CookieInfo*) ;
 scalar_t__ Curl_get_line (char*,int ,int *) ;
 void* FALSE ;
 int FOPEN_READTEXT ;
 scalar_t__ ISBLANK (char) ;
 int MAX_COOKIE_LINE ;
 void* TRUE ;
 struct CookieInfo* calloc (int,int) ;
 scalar_t__ checkprefix (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,int ) ;
 int free (char*) ;
 char* malloc (int ) ;
 int remove_expired (struct CookieInfo*) ;
 int * stdin ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;

struct CookieInfo *Curl_cookie_init(struct Curl_easy *data,
                                    const char *file,
                                    struct CookieInfo *inc,
                                    bool newsession)
{
  struct CookieInfo *c;
  FILE *fp = ((void*)0);
  bool fromfile = TRUE;
  char *line = ((void*)0);

  if(((void*)0) == inc) {

    c = calloc(1, sizeof(struct CookieInfo));
    if(!c)
      return ((void*)0);
    c->filename = strdup(file?file:"none");
    if(!c->filename)
      goto fail;
  }
  else {

    c = inc;
  }
  c->running = FALSE;

  if(file && !strcmp(file, "-")) {
    fp = stdin;
    fromfile = FALSE;
  }
  else if(file && !*file) {

    fp = ((void*)0);
  }
  else
    fp = file?fopen(file, FOPEN_READTEXT):((void*)0);

  c->newsession = newsession;

  if(fp) {
    char *lineptr;
    bool headerline;

    line = malloc(MAX_COOKIE_LINE);
    if(!line)
      goto fail;
    while(Curl_get_line(line, MAX_COOKIE_LINE, fp)) {
      if(checkprefix("Set-Cookie:", line)) {

        lineptr = &line[11];
        headerline = TRUE;
      }
      else {
        lineptr = line;
        headerline = FALSE;
      }
      while(*lineptr && ISBLANK(*lineptr))
        lineptr++;

      Curl_cookie_add(data, c, headerline, TRUE, lineptr, ((void*)0), ((void*)0), TRUE);
    }
    free(line);
    remove_expired(c);

    if(fromfile)
      fclose(fp);
  }

  c->running = TRUE;
  if(data)
    data->state.cookie_engine = TRUE;

  return c;

fail:
  free(line);
  if(!inc)


    Curl_cookie_cleanup(c);
  if(fromfile && fp)
    fclose(fp);
  return ((void*)0);
}
