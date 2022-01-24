#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connectdata {struct Curl_easy* data; } ;
struct IMAP {char* mailbox; char* uidvalidity; char* uid; char* mindex; char* section; char* partial; int /*<<< orphan*/  query; } ;
struct TYPE_5__ {char* path; } ;
struct TYPE_6__ {int /*<<< orphan*/  uh; TYPE_2__ up; } ;
struct TYPE_4__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_3__ state; TYPE_1__ req; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_URL_MALFORMAT ; 
 int /*<<< orphan*/  CURLUPART_QUERY ; 
 int /*<<< orphan*/  CURLU_URLDECODE ; 
 scalar_t__ FUNC0 (struct Curl_easy*,char const*,int,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static CURLcode FUNC7(struct connectdata *conn)
{
  /* The imap struct is already initialised in imap_connect() */
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  const char *begin = &data->state.up.path[1]; /* skip leading slash */
  const char *ptr = begin;

  /* See how much of the URL is a valid path and decode it */
  while(FUNC4(*ptr))
    ptr++;

  if(ptr != begin) {
    /* Remove the trailing slash if present */
    const char *end = ptr;
    if(end > begin && end[-1] == '/')
      end--;

    result = FUNC0(data, begin, end - begin, &imap->mailbox, NULL,
                            TRUE);
    if(result)
      return result;
  }
  else
    imap->mailbox = NULL;

  /* There can be any number of parameters in the form ";NAME=VALUE" */
  while(*ptr == ';') {
    char *name;
    char *value;
    size_t valuelen;

    /* Find the length of the name parameter */
    begin = ++ptr;
    while(*ptr && *ptr != '=')
      ptr++;

    if(!*ptr)
      return CURLE_URL_MALFORMAT;

    /* Decode the name parameter */
    result = FUNC0(data, begin, ptr - begin, &name, NULL, TRUE);
    if(result)
      return result;

    /* Find the length of the value parameter */
    begin = ++ptr;
    while(FUNC4(*ptr))
      ptr++;

    /* Decode the value parameter */
    result = FUNC0(data, begin, ptr - begin, &value, &valuelen, TRUE);
    if(result) {
      FUNC3(name);
      return result;
    }

    FUNC1(FUNC5(conn->data, "IMAP URL parameter '%s' = '%s'\n", name, value));

    /* Process the known hierarchical parameters (UIDVALIDITY, UID, SECTION and
       PARTIAL) stripping of the trailing slash character if it is present.

       Note: Unknown parameters trigger a URL_MALFORMAT error. */
    if(FUNC6(name, "UIDVALIDITY") && !imap->uidvalidity) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->uidvalidity = value;
      value = NULL;
    }
    else if(FUNC6(name, "UID") && !imap->uid) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->uid = value;
      value = NULL;
    }
    else if(FUNC6(name, "MAILINDEX") && !imap->mindex) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->mindex = value;
      value = NULL;
    }
    else if(FUNC6(name, "SECTION") && !imap->section) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->section = value;
      value = NULL;
    }
    else if(FUNC6(name, "PARTIAL") && !imap->partial) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->partial = value;
      value = NULL;
    }
    else {
      FUNC3(name);
      FUNC3(value);

      return CURLE_URL_MALFORMAT;
    }

    FUNC3(name);
    FUNC3(value);
  }

  /* Does the URL contain a query parameter? Only valid when we have a mailbox
     and no UID as per RFC-5092 */
  if(imap->mailbox && !imap->uid && !imap->mindex) {
    /* Get the query parameter, URL decoded */
    (void)FUNC2(data->state.uh, CURLUPART_QUERY, &imap->query,
                       CURLU_URLDECODE);
  }

  /* Any extra stuff at the end of the URL is an error */
  if(*ptr)
    return CURLE_URL_MALFORMAT;

  return CURLE_OK;
}