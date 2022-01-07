
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scope_str ;


 int IF_NAMESIZE ;
 scalar_t__ if_indextoname (unsigned int,char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int memmove (char*,char*,int) ;
 scalar_t__ snprintf (char*,int,char*,unsigned int) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
build_absolute_url(const char * baseurl, const char * descURL,
                   const char * url, unsigned int scope_id)
{
 int l, n;
 char * s;
 const char * base;
 char * p;



 char scope_str[8];


 if( (url[0] == 'h')
    &&(url[1] == 't')
    &&(url[2] == 't')
    &&(url[3] == 'p')
    &&(url[4] == ':')
    &&(url[5] == '/')
    &&(url[6] == '/'))
  return strdup(url);
 base = (baseurl[0] == '\0') ? descURL : baseurl;
 n = (int)strlen(base);
 if(n > 7) {
  p = (char*)strchr(base + 7, '/');
  if(p)
   n = (int)(p - base);
 }
 l = (int)(n + strlen(url) + 1);
 if(url[0] != '/')
  l++;
 if(scope_id != 0) {






  l += 3 + snprintf(scope_str, sizeof(scope_str), "%u", scope_id);

 }
 s = (char*)malloc(l);
 if(s == ((void*)0)) return ((void*)0);
 memcpy(s, base, n);
 if(scope_id != 0) {
  s[n] = '\0';
  if(0 == memcmp(s, "http://[fe80:", 13)) {

   p = strchr(s, ']');
   if(p) {







    memmove(p + 3 + strlen(scope_str), p, strlen(p) + 1);
    memcpy(p, "%25", 3);
    memcpy(p + 3, scope_str, strlen(scope_str));
    n += 3 + strlen(scope_str);

   }
  }
 }
 if(url[0] != '/')
  s[n++] = '/';
 memcpy(s + n, url, l - n);
 return s;
}
