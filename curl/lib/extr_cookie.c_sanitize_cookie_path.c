
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int memmove (void*,void const*,size_t) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *sanitize_cookie_path(const char *cookie_path)
{
  size_t len;
  char *new_path = strdup(cookie_path);
  if(!new_path)
    return ((void*)0);


  len = strlen(new_path);
  if(new_path[0] == '\"') {
    memmove((void *)new_path, (const void *)(new_path + 1), len);
    len--;
  }
  if(len && (new_path[len - 1] == '\"')) {
    new_path[len - 1] = 0x0;
    len--;
  }


  if(new_path[0] != '/') {

    free(new_path);
    new_path = strdup("/");
    return new_path;
  }


  if(len && new_path[len - 1] == '/') {
    new_path[len - 1] = 0x0;
  }

  return new_path;
}
