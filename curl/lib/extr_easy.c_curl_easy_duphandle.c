
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {void* referer; void* url; int * cookielist; void* referer_alloc; void* url_alloc; } ;
struct TYPE_9__ {void* headerbuff; void* buffer; int resolver; int * lastconnect; int * conn_cache; scalar_t__ headersize; } ;
struct TYPE_8__ {scalar_t__* str; int cookiesession; scalar_t__ buffer_size; } ;
struct TYPE_7__ {int callback; int flags; } ;
struct Curl_easy {TYPE_4__ change; TYPE_3__ state; int magic; TYPE_2__ set; TYPE_5__* cookies; TYPE_1__ progress; } ;
struct TYPE_11__ {int filename; } ;


 int CURLEASY_MAGIC_NUMBER ;
 int Curl_convert_setup (struct Curl_easy*) ;
 TYPE_5__* Curl_cookie_init (struct Curl_easy*,int ,TYPE_5__*,int ) ;
 int Curl_freeset (struct Curl_easy*) ;
 int Curl_initinfo (struct Curl_easy*) ;
 scalar_t__ Curl_resolver_duphandle (struct Curl_easy*,int *,int ) ;
 int Curl_safefree (void*) ;
 int * Curl_slist_duplicate (int *) ;
 scalar_t__ Curl_ssl_set_engine (struct Curl_easy*,scalar_t__) ;
 scalar_t__ HEADERSIZE ;
 size_t STRING_SSL_ENGINE ;
 void* TRUE ;
 struct Curl_easy* calloc (int,int) ;
 int curl_slist_free_all (int *) ;
 scalar_t__ dupset (struct Curl_easy*,struct Curl_easy*) ;
 int free (struct Curl_easy*) ;
 void* malloc (scalar_t__) ;
 void* strdup (void*) ;

struct Curl_easy *curl_easy_duphandle(struct Curl_easy *data)
{
  struct Curl_easy *outcurl = calloc(1, sizeof(struct Curl_easy));
  if(((void*)0) == outcurl)
    goto fail;






  outcurl->set.buffer_size = data->set.buffer_size;
  outcurl->state.buffer = malloc(outcurl->set.buffer_size + 1);
  if(!outcurl->state.buffer)
    goto fail;

  outcurl->state.headerbuff = malloc(HEADERSIZE);
  if(!outcurl->state.headerbuff)
    goto fail;
  outcurl->state.headersize = HEADERSIZE;


  if(dupset(outcurl, data))
    goto fail;


  outcurl->state.conn_cache = ((void*)0);

  outcurl->state.lastconnect = ((void*)0);

  outcurl->progress.flags = data->progress.flags;
  outcurl->progress.callback = data->progress.callback;

  if(data->cookies) {


    outcurl->cookies = Curl_cookie_init(data,
                                        data->cookies->filename,
                                        outcurl->cookies,
                                        data->set.cookiesession);
    if(!outcurl->cookies)
      goto fail;
  }


  if(data->change.cookielist) {
    outcurl->change.cookielist =
      Curl_slist_duplicate(data->change.cookielist);
    if(!outcurl->change.cookielist)
      goto fail;
  }

  if(data->change.url) {
    outcurl->change.url = strdup(data->change.url);
    if(!outcurl->change.url)
      goto fail;
    outcurl->change.url_alloc = TRUE;
  }

  if(data->change.referer) {
    outcurl->change.referer = strdup(data->change.referer);
    if(!outcurl->change.referer)
      goto fail;
    outcurl->change.referer_alloc = TRUE;
  }



  if(outcurl->set.str[STRING_SSL_ENGINE]) {
    if(Curl_ssl_set_engine(outcurl, outcurl->set.str[STRING_SSL_ENGINE]))
      goto fail;
  }


  if(Curl_resolver_duphandle(outcurl,
                             &outcurl->state.resolver,
                             data->state.resolver))
    goto fail;

  Curl_convert_setup(outcurl);

  Curl_initinfo(outcurl);

  outcurl->magic = CURLEASY_MAGIC_NUMBER;



  return outcurl;

  fail:

  if(outcurl) {
    curl_slist_free_all(outcurl->change.cookielist);
    outcurl->change.cookielist = ((void*)0);
    Curl_safefree(outcurl->state.buffer);
    Curl_safefree(outcurl->state.headerbuff);
    Curl_safefree(outcurl->change.url);
    Curl_safefree(outcurl->change.referer);
    Curl_freeset(outcurl);
    free(outcurl);
  }

  return ((void*)0);
}
