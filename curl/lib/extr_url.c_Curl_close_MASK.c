#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct Curl_multi {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  headers; TYPE_7__* probe; } ;
struct TYPE_18__ {TYPE_8__ doh; struct Curl_easy* newurl; } ;
struct TYPE_13__ {int /*<<< orphan*/  resolver; int /*<<< orphan*/ * ulbuf; int /*<<< orphan*/ * headerbuff; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * scratch; int /*<<< orphan*/ * first_host; struct Curl_easy* range; scalar_t__ rangestringalloc; int /*<<< orphan*/  timeoutlist; } ;
struct TYPE_12__ {int /*<<< orphan*/ * wouldredirect; int /*<<< orphan*/ * contenttype; } ;
struct TYPE_11__ {int /*<<< orphan*/ * str; } ;
struct TYPE_10__ {int /*<<< orphan*/ * referer; scalar_t__ referer_alloc; } ;
struct Curl_easy {int /*<<< orphan*/  wildcard; TYPE_9__ req; TYPE_5__* share; TYPE_4__ state; TYPE_3__ info; int /*<<< orphan*/ * asi; TYPE_2__ set; TYPE_1__ change; scalar_t__ magic; int /*<<< orphan*/ * multi_easy; struct Curl_multi* multi; } ;
struct TYPE_15__ {struct Curl_easy* memory; } ;
struct TYPE_16__ {TYPE_6__ serverdoh; } ;
struct TYPE_14__ {int /*<<< orphan*/  dirty; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct Curl_easy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC15 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 size_t STRING_ALTSVC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct Curl_multi*,struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC21 (struct Curl_easy*) ; 

CURLcode FUNC22(struct Curl_easy **datap)
{
  struct Curl_multi *m;
  struct Curl_easy *data;

  if(!datap || !*datap)
    return CURLE_OK;

  data = *datap;
  *datap = NULL;

  FUNC3(data); /* shut off timers */

  m = data->multi;
  if(m)
    /* This handle is still part of a multi handle, take care of this first
       and detach this handle from there. */
    FUNC18(data->multi, data);

  if(data->multi_easy) {
    /* when curl_easy_perform() is used, it creates its own multi handle to
       use and this is the one */
    FUNC17(data->multi_easy);
    data->multi_easy = NULL;
  }

  /* Destroy the timeout list that is held in the easy handle. It is
     /normally/ done by curl_multi_remove_handle() but this is "just in
     case" */
  FUNC9(&data->state.timeoutlist, NULL);

  data->magic = 0; /* force a clear AFTER the possibly enforced removal from
                      the multi handle, since that function uses the magic
                      field! */

  if(data->state.rangestringalloc)
    FUNC20(data->state.range);

  /* freed here just in case DONE wasn't called */
  FUNC5(data);

  /* Close down all open SSL info and sessions */
  FUNC14(data);
  FUNC11(data->state.first_host);
  FUNC11(data->state.scratch);
  FUNC15(data);

  /* Cleanup possible redirect junk */
  FUNC20(data->req.newurl);
  data->req.newurl = NULL;

  if(data->change.referer_alloc) {
    FUNC11(data->change.referer);
    data->change.referer_alloc = FALSE;
  }
  data->change.referer = NULL;

  FUNC21(data);
  FUNC11(data->state.buffer);
  FUNC11(data->state.headerbuff);
  FUNC11(data->state.ulbuf);
  FUNC4(data, TRUE);
#ifdef USE_ALTSVC
  Curl_altsvc_save(data->asi, data->set.str[STRING_ALTSVC]);
  Curl_altsvc_cleanup(data->asi);
  data->asi = NULL;
#endif
#if !defined(CURL_DISABLE_HTTP) && !defined(CURL_DISABLE_CRYPTO_AUTH)
  FUNC8(data);
#endif
  FUNC11(data->info.contenttype);
  FUNC11(data->info.wouldredirect);

  /* this destroys the channel and we cannot use it anymore after this */
  FUNC10(data->state.resolver);

  FUNC7(data);
  FUNC2(data);

  /* No longer a dirty share, if it exists */
  if(data->share) {
    FUNC12(data, CURL_LOCK_DATA_SHARE, CURL_LOCK_ACCESS_SINGLE);
    data->share->dirty--;
    FUNC13(data, CURL_LOCK_DATA_SHARE);
  }

#ifndef CURL_DISABLE_DOH
  FUNC20(data->req.doh.probe[0].serverdoh.memory);
  FUNC20(data->req.doh.probe[1].serverdoh.memory);
  FUNC19(data->req.doh.headers);
#endif

  /* destruct wildcard structures if it is needed */
  FUNC16(&data->wildcard);
  FUNC6(data);
  FUNC20(data);
  return CURLE_OK;
}