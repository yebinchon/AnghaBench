#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {int dummy; } ;
struct TYPE_19__ {int kind; int /*<<< orphan*/  filename; int /*<<< orphan*/  name; int /*<<< orphan*/  mimetype; int /*<<< orphan*/  encoder; scalar_t__ userheaders; struct TYPE_19__* nextpart; scalar_t__ arg; int /*<<< orphan*/  easy; int /*<<< orphan*/  freefunc; int /*<<< orphan*/  seekfunc; int /*<<< orphan*/  readfunc; int /*<<< orphan*/  datasize; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ curl_mimepart ;
struct TYPE_20__ {TYPE_1__* firstpart; } ;
typedef  TYPE_2__ curl_mime ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_READ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct curl_slist* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  MIMEKIND_CALLBACK 132 
#define  MIMEKIND_DATA 131 
#define  MIMEKIND_FILE 130 
#define  MIMEKIND_MULTIPART 129 
#define  MIMEKIND_NONE 128 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,struct curl_slist*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct curl_slist*) ; 

CURLcode FUNC14(curl_mimepart *dst, const curl_mimepart *src)
{
  curl_mime *mime;
  curl_mimepart *d;
  const curl_mimepart *s;
  CURLcode res = CURLE_OK;

  FUNC2(dst);

  /* Duplicate content. */
  switch(src->kind) {
  case MIMEKIND_NONE:
    break;
  case MIMEKIND_DATA:
    res = FUNC4(dst, src->data, (size_t) src->datasize);
    break;
  case MIMEKIND_FILE:
    res = FUNC6(dst, src->data);
    /* Do not abort duplication if file is not readable. */
    if(res == CURLE_READ_ERROR)
      res = CURLE_OK;
    break;
  case MIMEKIND_CALLBACK:
    res = FUNC5(dst, src->datasize, src->readfunc,
                            src->seekfunc, src->freefunc, src->arg);
    break;
  case MIMEKIND_MULTIPART:
    /* No one knows about the cloned subparts, thus always attach ownership
       to the part. */
    mime = FUNC9(dst->easy);
    res = mime? FUNC11(dst, mime): CURLE_OUT_OF_MEMORY;

    /* Duplicate subparts. */
    for(s = ((curl_mime *) src->arg)->firstpart; !res && s; s = s->nextpart) {
      d = FUNC3(mime);
      res = d? FUNC14(d, s): CURLE_OUT_OF_MEMORY;
    }
    break;
  default:  /* Invalid kind: should not occur. */
    res = CURLE_BAD_FUNCTION_ARGUMENT;  /* Internal error? */
    break;
  }

  /* Duplicate headers. */
  if(!res && src->userheaders) {
    struct curl_slist *hdrs = FUNC1(src->userheaders);

    if(!hdrs)
      res = CURLE_OUT_OF_MEMORY;
    else {
      /* No one but this procedure knows about the new header list,
         so always take ownership. */
      res = FUNC8(dst, hdrs, TRUE);
      if(res)
        FUNC13(hdrs);
    }
  }

  if(!res) {
    /* Duplicate other fields. */
    dst->encoder = src->encoder;
    res = FUNC12(dst, src->mimetype);
  }
  if(!res)
    res = FUNC10(dst, src->name);
  if(!res)
    res = FUNC7(dst, src->filename);

  /* If an error occurred, rollback. */
  if(res)
    FUNC0(dst);

  return res;
}