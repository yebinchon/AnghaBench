#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum mimestrategy { ____Placeholder_mimestrategy } mimestrategy ;
struct TYPE_9__ {scalar_t__ state; } ;
struct TYPE_7__ {char* mimetype; int kind; struct TYPE_7__* nextpart; int /*<<< orphan*/ * curlheaders; TYPE_4__ state; TYPE_1__* encoder; int /*<<< orphan*/  userheaders; scalar_t__ filename; scalar_t__ name; scalar_t__ arg; scalar_t__ data; } ;
typedef  TYPE_2__ curl_mimepart ;
struct TYPE_8__ {char* boundary; TYPE_2__* firstpart; } ;
typedef  TYPE_3__ curl_mime ;
struct TYPE_6__ {char* name; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char*,char const*,...) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* DISPOSITION_DEFAULT ; 
 char* FILE_CONTENTTYPE_DEFAULT ; 
#define  MIMEKIND_FILE 129 
#define  MIMEKIND_MULTIPART 128 
 scalar_t__ MIMESTATE_CURLHEADERS ; 
 int MIMESTRATEGY_MAIL ; 
 char* MULTIPART_CONTENTTYPE_DEFAULT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int) ; 

CURLcode FUNC11(curl_mimepart *part,
                                   const char *contenttype,
                                   const char *disposition,
                                   enum mimestrategy strategy)
{
  curl_mime *mime = NULL;
  const char *boundary = NULL;
  char *customct;
  const char *cte = NULL;
  CURLcode ret = CURLE_OK;

  /* Get rid of previously prepared headers. */
  FUNC4(part->curlheaders);
  part->curlheaders = NULL;

  /* Be sure we won't access old headers later. */
  if(part->state.state == MIMESTATE_CURLHEADERS)
    FUNC7(&part->state, MIMESTATE_CURLHEADERS, NULL);

  /* Check if content type is specified. */
  customct = part->mimetype;
  if(!customct)
    customct = FUNC8(part->userheaders, "Content-Type");
  if(customct)
    contenttype = customct;

  /* If content type is not specified, try to determine it. */
  if(!contenttype) {
    switch(part->kind) {
    case MIMEKIND_MULTIPART:
      contenttype = MULTIPART_CONTENTTYPE_DEFAULT;
      break;
    case MIMEKIND_FILE:
      contenttype = FUNC1(part->filename);
      if(!contenttype)
        contenttype = FUNC1(part->data);
      if(!contenttype && part->filename)
        contenttype = FILE_CONTENTTYPE_DEFAULT;
      break;
    default:
      contenttype = FUNC1(part->filename);
      break;
    }
  }

  if(part->kind == MIMEKIND_MULTIPART) {
    mime = (curl_mime *) part->arg;
    if(mime)
      boundary = mime->boundary;
  }
  else if(contenttype && !customct &&
          FUNC9(contenttype, "text/plain"))
    if(strategy == MIMESTRATEGY_MAIL || !part->filename)
      contenttype = NULL;

  /* Issue content-disposition header only if not already set by caller. */
  if(!FUNC8(part->userheaders, "Content-Disposition")) {
    if(!disposition)
      if(part->filename || part->name ||
        (contenttype && !FUNC10(contenttype, "multipart/", 10)))
          disposition = DISPOSITION_DEFAULT;
    if(disposition && FUNC5(disposition, "attachment") &&
     !part->name && !part->filename)
      disposition = NULL;
    if(disposition) {
      char *name = NULL;
      char *filename = NULL;

      if(part->name) {
        name = FUNC6(part->name);
        if(!name)
          ret = CURLE_OUT_OF_MEMORY;
      }
      if(!ret && part->filename) {
        filename = FUNC6(part->filename);
        if(!filename)
          ret = CURLE_OUT_OF_MEMORY;
      }
      if(!ret)
        ret = FUNC0(&part->curlheaders,
                                   "Content-Disposition: %s%s%s%s%s%s%s",
                                   disposition,
                                   name? "; name=\"": "",
                                   name? name: "",
                                   name? "\"": "",
                                   filename? "; filename=\"": "",
                                   filename? filename: "",
                                   filename? "\"": "");
      FUNC2(name);
      FUNC2(filename);
      if(ret)
        return ret;
      }
    }

  /* Issue Content-Type header. */
  if(contenttype) {
    ret = FUNC3(&part->curlheaders, contenttype, boundary);
    if(ret)
      return ret;
  }

  /* Content-Transfer-Encoding header. */
  if(!FUNC8(part->userheaders, "Content-Transfer-Encoding")) {
    if(part->encoder)
      cte = part->encoder->name;
    else if(contenttype && strategy == MIMESTRATEGY_MAIL &&
     part->kind != MIMEKIND_MULTIPART)
      cte = "8bit";
    if(cte) {
      ret = FUNC0(&part->curlheaders,
                                 "Content-Transfer-Encoding: %s", cte);
      if(ret)
        return ret;
    }
  }

  /* If we were reading curl-generated headers, restart with new ones (this
     should not occur). */
  if(part->state.state == MIMESTATE_CURLHEADERS)
    FUNC7(&part->state, MIMESTATE_CURLHEADERS, part->curlheaders);

  /* Process subparts. */
  if(part->kind == MIMEKIND_MULTIPART && mime) {
    curl_mimepart *subpart;

    disposition = NULL;
    if(FUNC9(contenttype, "multipart/form-data"))
      disposition = "form-data";
    for(subpart = mime->firstpart; subpart; subpart = subpart->nextpart) {
      ret = FUNC11(subpart, NULL, disposition, strategy);
      if(ret)
        return ret;
    }
  }
  return ret;
}