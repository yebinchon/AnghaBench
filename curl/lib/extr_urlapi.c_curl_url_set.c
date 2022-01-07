
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* scheme; char* user; char* password; char* options; char* host; char* zoneid; long portnum; char* port; char* path; char* query; char* fragment; } ;
typedef int CURLUcode ;
typedef int CURLUPart ;
typedef TYPE_1__ CURLU ;


 int CURLUE_BAD_HANDLE ;
 int CURLUE_BAD_PORT_NUMBER ;
 int CURLUE_MALFORMED_INPUT ;
 int CURLUE_OK ;
 int CURLUE_OUT_OF_MEMORY ;
 int CURLUE_UNKNOWN_PART ;
 int CURLUE_UNSUPPORTED_SCHEME ;
 unsigned int CURLU_APPENDQUERY ;
 unsigned int CURLU_NON_SUPPORT_SCHEME ;
 unsigned int CURLU_NO_AUTHORITY ;
 unsigned int CURLU_URLENCODE ;
 size_t CURL_MAX_INPUT_LENGTH ;
 int Curl_builtin_scheme (char const*) ;
 int Curl_is_absolute_url (char const*,int *,int ) ;
 scalar_t__ Curl_isunreserved (unsigned char const) ;
 int DEBUGASSERT (char**) ;
 int FALSE ;
 scalar_t__ ISUPPER (char) ;
 scalar_t__ ISXDIGIT (char) ;
 size_t MAX_SCHEME_LEN ;
 scalar_t__ TOLOWER (char) ;
 int TRUE ;
 char* concat_url (char*,char const*) ;
 TYPE_1__* curl_url () ;
 int curl_url_cleanup (TYPE_1__*) ;
 int curl_url_get (TYPE_1__*,int const,char**,unsigned int) ;
 int free (char*) ;
 scalar_t__ hostname_check (TYPE_1__*,char*) ;
 char* malloc (size_t) ;
 int msnprintf (char*,int,char*,unsigned char const) ;
 int mv_urlhandle (TYPE_1__*,TYPE_1__*) ;
 int parseurl (char const*,TYPE_1__*,unsigned int) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 long strtol (char const*,char**,int) ;

CURLUcode curl_url_set(CURLU *u, CURLUPart what,
                       const char *part, unsigned int flags)
{
  char **storep = ((void*)0);
  long port = 0;
  bool urlencode = (flags & CURLU_URLENCODE)? 1 : 0;
  bool plusencode = FALSE;
  bool urlskipslash = FALSE;
  bool appendquery = FALSE;
  bool equalsencode = FALSE;

  if(!u)
    return CURLUE_BAD_HANDLE;
  if(!part) {

    switch(what) {
    case 130:
      break;
    case 131:
      storep = &u->scheme;
      break;
    case 129:
      storep = &u->user;
      break;
    case 135:
      storep = &u->password;
      break;
    case 136:
      storep = &u->options;
      break;
    case 137:
      storep = &u->host;
      break;
    case 128:
      storep = &u->zoneid;
      break;
    case 133:
      u->portnum = 0;
      storep = &u->port;
      break;
    case 134:
      storep = &u->path;
      break;
    case 132:
      storep = &u->query;
      break;
    case 138:
      storep = &u->fragment;
      break;
    default:
      return CURLUE_UNKNOWN_PART;
    }
    if(storep && *storep) {
      free(*storep);
      *storep = ((void*)0);
    }
    return CURLUE_OK;
  }

  switch(what) {
  case 131:
    if(strlen(part) > MAX_SCHEME_LEN)

      return CURLUE_MALFORMED_INPUT;
    if(!(flags & CURLU_NON_SUPPORT_SCHEME) &&

       !Curl_builtin_scheme(part))
      return CURLUE_UNSUPPORTED_SCHEME;
    storep = &u->scheme;
    urlencode = FALSE;
    break;
  case 129:
    storep = &u->user;
    break;
  case 135:
    storep = &u->password;
    break;
  case 136:
    storep = &u->options;
    break;
  case 137:
    storep = &u->host;
    free(u->zoneid);
    u->zoneid = ((void*)0);
    break;
  case 128:
    storep = &u->zoneid;
    break;
  case 133:
  {
    char *endp;
    urlencode = FALSE;
    port = strtol(part, &endp, 10);
    if((port <= 0) || (port > 0xffff))
      return CURLUE_BAD_PORT_NUMBER;
    if(*endp)

      return CURLUE_MALFORMED_INPUT;
    storep = &u->port;
  }
  break;
  case 134:
    urlskipslash = TRUE;
    storep = &u->path;
    break;
  case 132:
    plusencode = urlencode;
    appendquery = (flags & CURLU_APPENDQUERY)?1:0;
    equalsencode = appendquery;
    storep = &u->query;
    break;
  case 138:
    storep = &u->fragment;
    break;
  case 130: {






    CURLUcode result;
    char *oldurl;
    char *redired_url;
    CURLU *handle2;

    if(Curl_is_absolute_url(part, ((void*)0), MAX_SCHEME_LEN + 1)) {
      handle2 = curl_url();
      if(!handle2)
        return CURLUE_OUT_OF_MEMORY;
      result = parseurl(part, handle2, flags);
      if(!result)
        mv_urlhandle(handle2, u);
      else
        curl_url_cleanup(handle2);
      return result;
    }

    result = curl_url_get(u, 130, &oldurl, flags);
    if(result) {

      handle2 = curl_url();
      if(!handle2)
        return CURLUE_OUT_OF_MEMORY;
      result = parseurl(part, handle2, flags);
      if(!result)
        mv_urlhandle(handle2, u);
      else
        curl_url_cleanup(handle2);
      return result;
    }


    redired_url = concat_url(oldurl, part);
    free(oldurl);
    if(!redired_url)
      return CURLUE_OUT_OF_MEMORY;


    handle2 = curl_url();
    if(!handle2) {
      free(redired_url);
      return CURLUE_OUT_OF_MEMORY;
    }
    result = parseurl(redired_url, handle2, flags);
    free(redired_url);
    if(!result)
      mv_urlhandle(handle2, u);
    else
      curl_url_cleanup(handle2);
    return result;
  }
  default:
    return CURLUE_UNKNOWN_PART;
  }
  DEBUGASSERT(storep);
  {
    const char *newp = part;
    size_t nalloc = strlen(part);

    if(nalloc > CURL_MAX_INPUT_LENGTH)

      return CURLUE_MALFORMED_INPUT;

    if(urlencode) {
      const unsigned char *i;
      char *o;
      bool free_part = FALSE;
      char *enc = malloc(nalloc * 3 + 1);
      if(!enc)
        return CURLUE_OUT_OF_MEMORY;
      if(plusencode) {

        i = (const unsigned char *)part;
        for(o = enc; *i; ++o, ++i)
          *o = (*i == ' ') ? '+' : *i;
        *o = 0;
        part = strdup(enc);
        if(!part) {
          free(enc);
          return CURLUE_OUT_OF_MEMORY;
        }
        free_part = TRUE;
      }
      for(i = (const unsigned char *)part, o = enc; *i; i++) {
        if(Curl_isunreserved(*i) ||
           ((*i == '/') && urlskipslash) ||
           ((*i == '=') && equalsencode) ||
           ((*i == '+') && plusencode)) {
          if((*i == '=') && equalsencode)

            equalsencode = FALSE;
          *o = *i;
          o++;
        }
        else {
          msnprintf(o, 4, "%%%02x", *i);
          o += 3;
        }
      }
      *o = 0;
      newp = enc;
      if(free_part)
        free((char *)part);
    }
    else {
      char *p;
      newp = strdup(part);
      if(!newp)
        return CURLUE_OUT_OF_MEMORY;
      p = (char *)newp;
      while(*p) {

        if((*p == '%') && ISXDIGIT(p[1]) && ISXDIGIT(p[2]) &&
           (ISUPPER(p[1]) || ISUPPER(p[2]))) {
          p[1] = (char)TOLOWER(p[1]);
          p[2] = (char)TOLOWER(p[2]);
          p += 3;
        }
        else
          p++;
      }
    }

    if(appendquery) {


      size_t querylen = u->query ? strlen(u->query) : 0;
      bool addamperand = querylen && (u->query[querylen -1] != '&');
      if(querylen) {
        size_t newplen = strlen(newp);
        char *p = malloc(querylen + addamperand + newplen + 1);
        if(!p) {
          free((char *)newp);
          return CURLUE_OUT_OF_MEMORY;
        }
        strcpy(p, u->query);
        if(addamperand)
          p[querylen] = '&';
        strcpy(&p[querylen + addamperand], newp);
        free((char *)newp);
        free(*storep);
        *storep = p;
        return CURLUE_OK;
      }
    }

    if(what == 137) {
      if(0 == strlen(newp) && (flags & CURLU_NO_AUTHORITY)) {

      }
      else {
        if(hostname_check(u, (char *)newp)) {
          free((char *)newp);
          return CURLUE_MALFORMED_INPUT;
        }
      }
    }

    free(*storep);
    *storep = (char *)newp;
  }


  if(port)
    u->portnum = port;
  return CURLUE_OK;
}
