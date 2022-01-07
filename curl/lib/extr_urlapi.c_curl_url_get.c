
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_handler {char* defport; int flags; } ;
typedef int portbuf ;
struct TYPE_3__ {char* scheme; char* user; char* password; char* options; char* host; char* zoneid; char* port; char* portnum; char* path; char* query; char* fragment; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLUcode ;
typedef int CURLUPart ;
typedef TYPE_1__ CURLU ;


 int CURLUE_BAD_HANDLE ;
 int CURLUE_BAD_PARTPOINTER ;
 int CURLUE_NO_FRAGMENT ;
 int CURLUE_NO_HOST ;
 int CURLUE_NO_OPTIONS ;
 int CURLUE_NO_PASSWORD ;
 int CURLUE_NO_PORT ;
 int CURLUE_NO_QUERY ;
 int CURLUE_NO_SCHEME ;
 int CURLUE_NO_USER ;
 int CURLUE_OK ;
 int CURLUE_OUT_OF_MEMORY ;
 int CURLUE_UNKNOWN_PART ;
 int CURLUE_URLDECODE ;
 unsigned int CURLU_DEFAULT_PORT ;
 unsigned int CURLU_DEFAULT_SCHEME ;
 unsigned int CURLU_NO_DEFAULT_PORT ;
 unsigned int CURLU_URLDECODE ;
 struct Curl_handler* Curl_builtin_scheme (char*) ;
 scalar_t__ Curl_urldecode (int *,char*,int ,char**,size_t*,int ) ;
 scalar_t__ DEFAULT_SCHEME ;
 int FALSE ;
 int PROTOPT_URLOPTIONS ;
 int TRUE ;
 char* aprintf (char*,char*,char*,char*,...) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int msnprintf (char*,int,char*,char*) ;
 int strcasecompare (char*,char*) ;
 void* strdup (char*) ;
 size_t strlen (char*) ;

CURLUcode curl_url_get(CURLU *u, CURLUPart what,
                       char **part, unsigned int flags)
{
  char *ptr;
  CURLUcode ifmissing = CURLUE_UNKNOWN_PART;
  char portbuf[7];
  bool urldecode = (flags & CURLU_URLDECODE)?1:0;
  bool plusdecode = FALSE;
  (void)flags;
  if(!u)
    return CURLUE_BAD_HANDLE;
  if(!part)
    return CURLUE_BAD_PARTPOINTER;
  *part = ((void*)0);

  switch(what) {
  case 131:
    ptr = u->scheme;
    ifmissing = CURLUE_NO_SCHEME;
    urldecode = FALSE;
    break;
  case 129:
    ptr = u->user;
    ifmissing = CURLUE_NO_USER;
    break;
  case 135:
    ptr = u->password;
    ifmissing = CURLUE_NO_PASSWORD;
    break;
  case 136:
    ptr = u->options;
    ifmissing = CURLUE_NO_OPTIONS;
    break;
  case 137:
    ptr = u->host;
    ifmissing = CURLUE_NO_HOST;
    break;
  case 128:
    ptr = u->zoneid;
    break;
  case 133:
    ptr = u->port;
    ifmissing = CURLUE_NO_PORT;
    urldecode = FALSE;
    if(!ptr && (flags & CURLU_DEFAULT_PORT) && u->scheme) {


      const struct Curl_handler *h =
        Curl_builtin_scheme(u->scheme);
      if(h) {
        msnprintf(portbuf, sizeof(portbuf), "%ld", h->defport);
        ptr = portbuf;
      }
    }
    else if(ptr && u->scheme) {


      const struct Curl_handler *h =
        Curl_builtin_scheme(u->scheme);
      if(h && (h->defport == u->portnum) &&
         (flags & CURLU_NO_DEFAULT_PORT))
        ptr = ((void*)0);
    }
    break;
  case 134:
    ptr = u->path;
    if(!ptr) {
      ptr = u->path = strdup("/");
      if(!u->path)
        return CURLUE_OUT_OF_MEMORY;
    }
    break;
  case 132:
    ptr = u->query;
    ifmissing = CURLUE_NO_QUERY;
    plusdecode = urldecode;
    break;
  case 138:
    ptr = u->fragment;
    ifmissing = CURLUE_NO_FRAGMENT;
    break;
  case 130: {
    char *url;
    char *scheme;
    char *options = u->options;
    char *port = u->port;
    char *allochost = ((void*)0);
    if(u->scheme && strcasecompare("file", u->scheme)) {
      url = aprintf("file://%s%s%s",
                    u->path,
                    u->fragment? "#": "",
                    u->fragment? u->fragment : "");
    }
    else if(!u->host)
      return CURLUE_NO_HOST;
    else {
      const struct Curl_handler *h = ((void*)0);
      if(u->scheme)
        scheme = u->scheme;
      else if(flags & CURLU_DEFAULT_SCHEME)
        scheme = (char *) DEFAULT_SCHEME;
      else
        return CURLUE_NO_SCHEME;

      h = Curl_builtin_scheme(scheme);
      if(!port && (flags & CURLU_DEFAULT_PORT)) {


        if(h) {
          msnprintf(portbuf, sizeof(portbuf), "%ld", h->defport);
          port = portbuf;
        }
      }
      else if(port) {


        if(h && (h->defport == u->portnum) &&
           (flags & CURLU_NO_DEFAULT_PORT))
          port = ((void*)0);
      }

      if(h && !(h->flags & PROTOPT_URLOPTIONS))
        options = ((void*)0);

      if((u->host[0] == '[') && u->zoneid) {

        size_t hostlen = strlen(u->host);
        size_t alen = hostlen + 3 + strlen(u->zoneid) + 1;
        allochost = malloc(alen);
        if(!allochost)
          return CURLUE_OUT_OF_MEMORY;
        memcpy(allochost, u->host, hostlen - 1);
        msnprintf(&allochost[hostlen - 1], alen - hostlen + 1,
                  "%%25%s]", u->zoneid);
      }

      url = aprintf("%s://%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
                    scheme,
                    u->user ? u->user : "",
                    u->password ? ":": "",
                    u->password ? u->password : "",
                    options ? ";" : "",
                    options ? options : "",
                    (u->user || u->password || options) ? "@": "",
                    allochost ? allochost : u->host,
                    port ? ":": "",
                    port ? port : "",
                    (u->path && (u->path[0] != '/')) ? "/": "",
                    u->path ? u->path : "/",
                    (u->query && u->query[0]) ? "?": "",
                    (u->query && u->query[0]) ? u->query : "",
                    u->fragment? "#": "",
                    u->fragment? u->fragment : "");
      free(allochost);
    }
    if(!url)
      return CURLUE_OUT_OF_MEMORY;
    *part = url;
    return CURLUE_OK;
  }
  default:
    ptr = ((void*)0);
    break;
  }
  if(ptr) {
    *part = strdup(ptr);
    if(!*part)
      return CURLUE_OUT_OF_MEMORY;
    if(plusdecode) {

      char *plus;
      for(plus = *part; *plus; ++plus) {
        if(*plus == '+')
          *plus = ' ';
      }
    }
    if(urldecode) {
      char *decoded;
      size_t dlen;
      CURLcode res = Curl_urldecode(((void*)0), *part, 0, &decoded, &dlen, TRUE);
      free(*part);
      if(res) {
        *part = ((void*)0);
        return CURLUE_URLDECODE;
      }
      *part = decoded;
    }
    return CURLUE_OK;
  }
  else
    return ifmissing;
}
