#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* scheme; char* user; char* password; char* options; char* host; char* zoneid; long portnum; char* port; char* path; char* query; char* fragment; } ;
typedef  int /*<<< orphan*/  CURLUcode ;
typedef  int CURLUPart ;
typedef  TYPE_1__ CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  CURLUE_BAD_HANDLE ; 
 int /*<<< orphan*/  CURLUE_BAD_PORT_NUMBER ; 
 int /*<<< orphan*/  CURLUE_MALFORMED_INPUT ; 
 int /*<<< orphan*/  CURLUE_OK ; 
 int /*<<< orphan*/  CURLUE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLUE_UNKNOWN_PART ; 
 int /*<<< orphan*/  CURLUE_UNSUPPORTED_SCHEME ; 
#define  CURLUPART_FRAGMENT 138 
#define  CURLUPART_HOST 137 
#define  CURLUPART_OPTIONS 136 
#define  CURLUPART_PASSWORD 135 
#define  CURLUPART_PATH 134 
#define  CURLUPART_PORT 133 
#define  CURLUPART_QUERY 132 
#define  CURLUPART_SCHEME 131 
#define  CURLUPART_URL 130 
#define  CURLUPART_USER 129 
#define  CURLUPART_ZONEID 128 
 unsigned int CURLU_APPENDQUERY ; 
 unsigned int CURLU_NON_SUPPORT_SCHEME ; 
 unsigned int CURLU_NO_AUTHORITY ; 
 unsigned int CURLU_URLENCODE ; 
 size_t CURL_MAX_INPUT_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FALSE ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 size_t MAX_SCHEME_LEN ; 
 scalar_t__ FUNC6 (char) ; 
 int TRUE ; 
 char* FUNC7 (char*,char const*) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int const,char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,char*) ; 
 char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 
 char* FUNC18 (char const*) ; 
 size_t FUNC19 (char const*) ; 
 long FUNC20 (char const*,char**,int) ; 

CURLUcode FUNC21(CURLU *u, CURLUPart what,
                       const char *part, unsigned int flags)
{
  char **storep = NULL;
  long port = 0;
  bool urlencode = (flags & CURLU_URLENCODE)? 1 : 0;
  bool plusencode = FALSE;
  bool urlskipslash = FALSE;
  bool appendquery = FALSE;
  bool equalsencode = FALSE;

  if(!u)
    return CURLUE_BAD_HANDLE;
  if(!part) {
    /* setting a part to NULL clears it */
    switch(what) {
    case CURLUPART_URL:
      break;
    case CURLUPART_SCHEME:
      storep = &u->scheme;
      break;
    case CURLUPART_USER:
      storep = &u->user;
      break;
    case CURLUPART_PASSWORD:
      storep = &u->password;
      break;
    case CURLUPART_OPTIONS:
      storep = &u->options;
      break;
    case CURLUPART_HOST:
      storep = &u->host;
      break;
    case CURLUPART_ZONEID:
      storep = &u->zoneid;
      break;
    case CURLUPART_PORT:
      u->portnum = 0;
      storep = &u->port;
      break;
    case CURLUPART_PATH:
      storep = &u->path;
      break;
    case CURLUPART_QUERY:
      storep = &u->query;
      break;
    case CURLUPART_FRAGMENT:
      storep = &u->fragment;
      break;
    default:
      return CURLUE_UNKNOWN_PART;
    }
    if(storep && *storep) {
      FUNC11(*storep);
      *storep = NULL;
    }
    return CURLUE_OK;
  }

  switch(what) {
  case CURLUPART_SCHEME:
    if(FUNC19(part) > MAX_SCHEME_LEN)
      /* too long */
      return CURLUE_MALFORMED_INPUT;
    if(!(flags & CURLU_NON_SUPPORT_SCHEME) &&
       /* verify that it is a fine scheme */
       !FUNC0(part))
      return CURLUE_UNSUPPORTED_SCHEME;
    storep = &u->scheme;
    urlencode = FALSE; /* never */
    break;
  case CURLUPART_USER:
    storep = &u->user;
    break;
  case CURLUPART_PASSWORD:
    storep = &u->password;
    break;
  case CURLUPART_OPTIONS:
    storep = &u->options;
    break;
  case CURLUPART_HOST:
    storep = &u->host;
    FUNC11(u->zoneid);
    u->zoneid = NULL;
    break;
  case CURLUPART_ZONEID:
    storep = &u->zoneid;
    break;
  case CURLUPART_PORT:
  {
    char *endp;
    urlencode = FALSE; /* never */
    port = FUNC20(part, &endp, 10);  /* Port number must be decimal */
    if((port <= 0) || (port > 0xffff))
      return CURLUE_BAD_PORT_NUMBER;
    if(*endp)
      /* weirdly provided number, not good! */
      return CURLUE_MALFORMED_INPUT;
    storep = &u->port;
  }
  break;
  case CURLUPART_PATH:
    urlskipslash = TRUE;
    storep = &u->path;
    break;
  case CURLUPART_QUERY:
    plusencode = urlencode;
    appendquery = (flags & CURLU_APPENDQUERY)?1:0;
    equalsencode = appendquery;
    storep = &u->query;
    break;
  case CURLUPART_FRAGMENT:
    storep = &u->fragment;
    break;
  case CURLUPART_URL: {
    /*
     * Allow a new URL to replace the existing (if any) contents.
     *
     * If the existing contents is enough for a URL, allow a relative URL to
     * replace it.
     */
    CURLUcode result;
    char *oldurl;
    char *redired_url;
    CURLU *handle2;

    if(FUNC1(part, NULL, MAX_SCHEME_LEN + 1)) {
      handle2 = FUNC8();
      if(!handle2)
        return CURLUE_OUT_OF_MEMORY;
      result = FUNC16(part, handle2, flags);
      if(!result)
        FUNC15(handle2, u);
      else
        FUNC9(handle2);
      return result;
    }
    /* extract the full "old" URL to do the redirect on */
    result = FUNC10(u, CURLUPART_URL, &oldurl, flags);
    if(result) {
      /* couldn't get the old URL, just use the new! */
      handle2 = FUNC8();
      if(!handle2)
        return CURLUE_OUT_OF_MEMORY;
      result = FUNC16(part, handle2, flags);
      if(!result)
        FUNC15(handle2, u);
      else
        FUNC9(handle2);
      return result;
    }

    /* apply the relative part to create a new URL */
    redired_url = FUNC7(oldurl, part);
    FUNC11(oldurl);
    if(!redired_url)
      return CURLUE_OUT_OF_MEMORY;

    /* now parse the new URL */
    handle2 = FUNC8();
    if(!handle2) {
      FUNC11(redired_url);
      return CURLUE_OUT_OF_MEMORY;
    }
    result = FUNC16(redired_url, handle2, flags);
    FUNC11(redired_url);
    if(!result)
      FUNC15(handle2, u);
    else
      FUNC9(handle2);
    return result;
  }
  default:
    return CURLUE_UNKNOWN_PART;
  }
  FUNC3(storep);
  {
    const char *newp = part;
    size_t nalloc = FUNC19(part);

    if(nalloc > CURL_MAX_INPUT_LENGTH)
      /* excessive input length */
      return CURLUE_MALFORMED_INPUT;

    if(urlencode) {
      const unsigned char *i;
      char *o;
      bool free_part = FALSE;
      char *enc = FUNC13(nalloc * 3 + 1); /* for worst case! */
      if(!enc)
        return CURLUE_OUT_OF_MEMORY;
      if(plusencode) {
        /* space to plus */
        i = (const unsigned char *)part;
        for(o = enc; *i; ++o, ++i)
          *o = (*i == ' ') ? '+' : *i;
        *o = 0; /* zero terminate */
        part = FUNC18(enc);
        if(!part) {
          FUNC11(enc);
          return CURLUE_OUT_OF_MEMORY;
        }
        free_part = TRUE;
      }
      for(i = (const unsigned char *)part, o = enc; *i; i++) {
        if(FUNC2(*i) ||
           ((*i == '/') && urlskipslash) ||
           ((*i == '=') && equalsencode) ||
           ((*i == '+') && plusencode)) {
          if((*i == '=') && equalsencode)
            /* only skip the first equals sign */
            equalsencode = FALSE;
          *o = *i;
          o++;
        }
        else {
          FUNC14(o, 4, "%%%02x", *i);
          o += 3;
        }
      }
      *o = 0; /* zero terminate */
      newp = enc;
      if(free_part)
        FUNC11((char *)part);
    }
    else {
      char *p;
      newp = FUNC18(part);
      if(!newp)
        return CURLUE_OUT_OF_MEMORY;
      p = (char *)newp;
      while(*p) {
        /* make sure percent encoded are lower case */
        if((*p == '%') && FUNC5(p[1]) && FUNC5(p[2]) &&
           (FUNC4(p[1]) || FUNC4(p[2]))) {
          p[1] = (char)FUNC6(p[1]);
          p[2] = (char)FUNC6(p[2]);
          p += 3;
        }
        else
          p++;
      }
    }

    if(appendquery) {
      /* Append the string onto the old query. Add a '&' separator if none is
         present at the end of the exsting query already */
      size_t querylen = u->query ? FUNC19(u->query) : 0;
      bool addamperand = querylen && (u->query[querylen -1] != '&');
      if(querylen) {
        size_t newplen = FUNC19(newp);
        char *p = FUNC13(querylen + addamperand + newplen + 1);
        if(!p) {
          FUNC11((char *)newp);
          return CURLUE_OUT_OF_MEMORY;
        }
        FUNC17(p, u->query); /* original query */
        if(addamperand)
          p[querylen] = '&'; /* ampersand */
        FUNC17(&p[querylen + addamperand], newp); /* new suffix */
        FUNC11((char *)newp);
        FUNC11(*storep);
        *storep = p;
        return CURLUE_OK;
      }
    }

    if(what == CURLUPART_HOST) {
      if(0 == FUNC19(newp) && (flags & CURLU_NO_AUTHORITY)) {
        /* Skip hostname check, it's allowed to be empty. */
      }
      else {
        if(FUNC12(u, (char *)newp)) {
          FUNC11((char *)newp);
          return CURLUE_MALFORMED_INPUT;
        }
      }
    }

    FUNC11(*storep);
    *storep = (char *)newp;
  }
  /* set after the string, to make it not assigned if the allocation above
     fails */
  if(port)
    u->portnum = port;
  return CURLUE_OK;
}