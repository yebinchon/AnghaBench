#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* referer; void* url; int /*<<< orphan*/ * cookielist; void* referer_alloc; void* url_alloc; } ;
struct TYPE_9__ {void* headerbuff; void* buffer; int /*<<< orphan*/  resolver; int /*<<< orphan*/ * lastconnect; int /*<<< orphan*/ * conn_cache; scalar_t__ headersize; } ;
struct TYPE_8__ {scalar_t__* str; int /*<<< orphan*/  cookiesession; scalar_t__ buffer_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  callback; int /*<<< orphan*/  flags; } ;
struct Curl_easy {TYPE_4__ change; TYPE_3__ state; int /*<<< orphan*/  magic; TYPE_2__ set; TYPE_5__* cookies; TYPE_1__ progress; } ;
struct TYPE_11__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLEASY_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 TYPE_5__* FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*) ; 
 scalar_t__ FUNC4 (struct Curl_easy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct Curl_easy*,scalar_t__) ; 
 scalar_t__ HEADERSIZE ; 
 size_t STRING_SSL_ENGINE ; 
 void* TRUE ; 
 struct Curl_easy* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct Curl_easy*,struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC11 (struct Curl_easy*) ; 
 void* FUNC12 (scalar_t__) ; 
 void* FUNC13 (void*) ; 

struct Curl_easy *FUNC14(struct Curl_easy *data)
{
  struct Curl_easy *outcurl = FUNC8(1, sizeof(struct Curl_easy));
  if(NULL == outcurl)
    goto fail;

  /*
   * We setup a few buffers we need. We should probably make them
   * get setup on-demand in the code, as that would probably decrease
   * the likeliness of us forgetting to init a buffer here in the future.
   */
  outcurl->set.buffer_size = data->set.buffer_size;
  outcurl->state.buffer = FUNC12(outcurl->set.buffer_size + 1);
  if(!outcurl->state.buffer)
    goto fail;

  outcurl->state.headerbuff = FUNC12(HEADERSIZE);
  if(!outcurl->state.headerbuff)
    goto fail;
  outcurl->state.headersize = HEADERSIZE;

  /* copy all userdefined values */
  if(FUNC10(outcurl, data))
    goto fail;

  /* the connection cache is setup on demand */
  outcurl->state.conn_cache = NULL;

  outcurl->state.lastconnect = NULL;

  outcurl->progress.flags    = data->progress.flags;
  outcurl->progress.callback = data->progress.callback;

  if(data->cookies) {
    /* If cookies are enabled in the parent handle, we enable them
       in the clone as well! */
    outcurl->cookies = FUNC1(data,
                                        data->cookies->filename,
                                        outcurl->cookies,
                                        data->set.cookiesession);
    if(!outcurl->cookies)
      goto fail;
  }

  /* duplicate all values in 'change' */
  if(data->change.cookielist) {
    outcurl->change.cookielist =
      FUNC6(data->change.cookielist);
    if(!outcurl->change.cookielist)
      goto fail;
  }

  if(data->change.url) {
    outcurl->change.url = FUNC13(data->change.url);
    if(!outcurl->change.url)
      goto fail;
    outcurl->change.url_alloc = TRUE;
  }

  if(data->change.referer) {
    outcurl->change.referer = FUNC13(data->change.referer);
    if(!outcurl->change.referer)
      goto fail;
    outcurl->change.referer_alloc = TRUE;
  }

  /* Reinitialize an SSL engine for the new handle
   * note: the engine name has already been copied by dupset */
  if(outcurl->set.str[STRING_SSL_ENGINE]) {
    if(FUNC7(outcurl, outcurl->set.str[STRING_SSL_ENGINE]))
      goto fail;
  }

  /* Clone the resolver handle, if present, for the new handle */
  if(FUNC4(outcurl,
                             &outcurl->state.resolver,
                             data->state.resolver))
    goto fail;

  FUNC0(outcurl);

  FUNC3(outcurl);

  outcurl->magic = CURLEASY_MAGIC_NUMBER;

  /* we reach this point and thus we are OK */

  return outcurl;

  fail:

  if(outcurl) {
    FUNC9(outcurl->change.cookielist);
    outcurl->change.cookielist = NULL;
    FUNC5(outcurl->state.buffer);
    FUNC5(outcurl->state.headerbuff);
    FUNC5(outcurl->change.url);
    FUNC5(outcurl->change.referer);
    FUNC2(outcurl);
    FUNC11(outcurl);
  }

  return NULL;
}