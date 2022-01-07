
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool pathmatch(const char *cookie_path, const char *request_uri)
{
  size_t cookie_path_len;
  size_t uri_path_len;
  char *uri_path = ((void*)0);
  char *pos;
  bool ret = FALSE;


  cookie_path_len = strlen(cookie_path);
  if(1 == cookie_path_len) {

    return TRUE;
  }

  uri_path = strdup(request_uri);
  if(!uri_path)
    return FALSE;
  pos = strchr(uri_path, '?');
  if(pos)
    *pos = 0x0;


  if(0 == strlen(uri_path) || uri_path[0] != '/') {
    free(uri_path);
    uri_path = strdup("/");
    if(!uri_path)
      return FALSE;
  }
  uri_path_len = strlen(uri_path);

  if(uri_path_len < cookie_path_len) {
    ret = FALSE;
    goto pathmatched;
  }


  if(strncmp(cookie_path, uri_path, cookie_path_len)) {
    ret = FALSE;
    goto pathmatched;
  }


  if(cookie_path_len == uri_path_len) {
    ret = TRUE;
    goto pathmatched;
  }


  if(uri_path[cookie_path_len] == '/') {
    ret = TRUE;
    goto pathmatched;
  }

  ret = FALSE;

pathmatched:
  free(uri_path);
  return ret;
}
