
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct Curl_handler {int dummy; } ;
typedef int schemebuf ;
struct TYPE_6__ {char* scratch; char* scheme; char* temppath; char* fragment; char* query; char* path; char* host; } ;
typedef scalar_t__ CURLUcode ;
typedef TYPE_1__ CURLU ;


 scalar_t__ CURLUE_MALFORMED_INPUT ;
 scalar_t__ CURLUE_OK ;
 scalar_t__ CURLUE_OUT_OF_MEMORY ;
 scalar_t__ CURLUE_UNSUPPORTED_SCHEME ;
 unsigned int CURLU_DEFAULT_SCHEME ;
 unsigned int CURLU_GUESS_SCHEME ;
 unsigned int CURLU_NON_SUPPORT_SCHEME ;
 unsigned int CURLU_NO_AUTHORITY ;
 unsigned int CURLU_PATH_AS_IS ;
 unsigned int CURLU_URLENCODE ;
 size_t CURL_MAX_INPUT_LENGTH ;
 struct Curl_handler* Curl_builtin_scheme (char*) ;
 char* Curl_dedotdotify (char*) ;
 scalar_t__ Curl_is_absolute_url (char const*,char*,int) ;
 scalar_t__ Curl_parse_port (TYPE_1__*,char*) ;
 int Curl_safefree (char*) ;
 scalar_t__ DEFAULT_SCHEME ;
 int FALSE ;
 int HOSTNAME_END (char const) ;
 int MAX_SCHEME_LEN ;
 scalar_t__ STARTS_WITH_URL_DRIVE_PREFIX (char*) ;
 int TRUE ;
 scalar_t__ checkprefix (char*,char*) ;
 int free (char*) ;
 scalar_t__ hostname_check (TYPE_1__*,char*) ;
 scalar_t__ junkscan (char*) ;
 void* malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,int) ;
 scalar_t__ parse_hostname_login (TYPE_1__*,struct Curl_handler const*,char**,unsigned int) ;
 scalar_t__ strcasecompare (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strcpy_url (char*,char*,int) ;
 char* strdup (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static CURLUcode seturl(const char *url, CURLU *u, unsigned int flags)
{
  char *path;
  bool path_alloced = FALSE;
  char *hostname;
  char *query = ((void*)0);
  char *fragment = ((void*)0);
  CURLUcode result;
  bool url_has_scheme = FALSE;
  char schemebuf[MAX_SCHEME_LEN + 1];
  char *schemep = ((void*)0);
  size_t schemelen = 0;
  size_t urllen;
  const struct Curl_handler *h = ((void*)0);

  if(!url)
    return CURLUE_MALFORMED_INPUT;





  urllen = strlen(url);
  if(urllen > CURL_MAX_INPUT_LENGTH)

    return CURLUE_MALFORMED_INPUT;

  path = u->scratch = malloc(urllen * 2 + 2);
  if(!path)
    return CURLUE_OUT_OF_MEMORY;

  hostname = &path[urllen + 1];
  hostname[0] = 0;

  if(Curl_is_absolute_url(url, schemebuf, sizeof(schemebuf))) {
    url_has_scheme = TRUE;
    schemelen = strlen(schemebuf);
  }


  if(url_has_scheme && strcasecompare(schemebuf, "file")) {

    strcpy(path, &url[5]);

    hostname = ((void*)0);
    u->scheme = strdup("file");
    if(!u->scheme)
      return CURLUE_OUT_OF_MEMORY;







    if(path[0] == '/' && path[1] == '/') {

      char *ptr = &path[2];
      if(ptr[0] != '/' && !STARTS_WITH_URL_DRIVE_PREFIX(ptr)) {


        if(!checkprefix("localhost/", ptr) &&
           !checkprefix("127.0.0.1/", ptr)) {


          return CURLUE_MALFORMED_INPUT;
        }
        ptr += 9;
      }

      path = ptr;
    }




    if(('/' == path[0] && STARTS_WITH_URL_DRIVE_PREFIX(&path[1])) ||
       STARTS_WITH_URL_DRIVE_PREFIX(path)) {

      return CURLUE_MALFORMED_INPUT;
    }
  }
  else {

    const char *p;
    const char *hostp;
    size_t len;
    path[0] = 0;

    if(url_has_scheme) {
      int i = 0;
      p = &url[schemelen + 1];
      while(p && (*p == '/') && (i < 4)) {
        p++;
        i++;
      }
      if((i < 1) || (i>3))

        return CURLUE_MALFORMED_INPUT;

      schemep = schemebuf;
      if(!Curl_builtin_scheme(schemep) &&
         !(flags & CURLU_NON_SUPPORT_SCHEME))
        return CURLUE_UNSUPPORTED_SCHEME;

      if(junkscan(schemep))
        return CURLUE_MALFORMED_INPUT;

    }
    else {


      if(!(flags & (CURLU_DEFAULT_SCHEME|CURLU_GUESS_SCHEME)))
        return CURLUE_MALFORMED_INPUT;
      if(flags & CURLU_DEFAULT_SCHEME)
        schemep = (char *) DEFAULT_SCHEME;




      p = url;
    }
    hostp = p;

    while(*p && !HOSTNAME_END(*p))
      p++;

    len = p - hostp;
    if(len) {
      memcpy(hostname, hostp, len);
      hostname[len] = 0;
    }
    else {
      if(!(flags & CURLU_NO_AUTHORITY))
        return CURLUE_MALFORMED_INPUT;
    }

    if((flags & CURLU_GUESS_SCHEME) && !schemep) {

      if(checkprefix("ftp.", hostname))
        schemep = (char *)"ftp";
      else if(checkprefix("dict.", hostname))
        schemep = (char *)"dict";
      else if(checkprefix("ldap.", hostname))
        schemep = (char *)"ldap";
      else if(checkprefix("imap.", hostname))
        schemep = (char *)"imap";
      else if(checkprefix("smtp.", hostname))
        schemep = (char *)"smtp";
      else if(checkprefix("pop3.", hostname))
        schemep = (char *)"pop3";
      else
        schemep = (char *)"http";
    }

    len = strlen(p);
    memcpy(path, p, len);
    path[len] = 0;

    u->scheme = strdup(schemep);
    if(!u->scheme)
      return CURLUE_OUT_OF_MEMORY;
  }


  h = Curl_builtin_scheme(u->scheme);

  if(junkscan(path))
    return CURLUE_MALFORMED_INPUT;

  if((flags & CURLU_URLENCODE) && path[0]) {

    char *newp = malloc(strlen(path) * 3);
    if(!newp)
      return CURLUE_OUT_OF_MEMORY;
    path_alloced = TRUE;
    strcpy_url(newp, path, TRUE);
    u->temppath = path = newp;
  }

  fragment = strchr(path, '#');
  if(fragment) {
    *fragment++ = 0;
    if(fragment[0]) {
      u->fragment = strdup(fragment);
      if(!u->fragment)
        return CURLUE_OUT_OF_MEMORY;
    }
  }

  query = strchr(path, '?');
  if(query) {
    *query++ = 0;

    u->query = strdup(query);
    if(!u->query)
      return CURLUE_OUT_OF_MEMORY;
  }

  if(!path[0])

    path = ((void*)0);
  else {
    if(!(flags & CURLU_PATH_AS_IS)) {

      char *newp = Curl_dedotdotify(path);
      if(!newp)
        return CURLUE_OUT_OF_MEMORY;

      if(strcmp(newp, path)) {

        if(path_alloced)
          Curl_safefree(u->temppath);
        u->temppath = path = newp;
        path_alloced = TRUE;
      }
      else
        free(newp);
    }

    u->path = path_alloced?path:strdup(path);
    if(!u->path)
      return CURLUE_OUT_OF_MEMORY;
    u->temppath = ((void*)0);
  }

  if(hostname) {



    if(junkscan(hostname))
      return CURLUE_MALFORMED_INPUT;

    result = parse_hostname_login(u, h, &hostname, flags);
    if(result)
      return result;

    result = Curl_parse_port(u, hostname);
    if(result)
      return result;

    if(0 == strlen(hostname) && (flags & CURLU_NO_AUTHORITY)) {

    }
    else {
      result = hostname_check(u, hostname);
      if(result)
        return result;
    }

    u->host = strdup(hostname);
    if(!u->host)
      return CURLUE_OUT_OF_MEMORY;
  }

  Curl_safefree(u->scratch);
  Curl_safefree(u->temppath);

  return CURLUE_OK;
}
