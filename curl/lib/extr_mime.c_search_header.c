
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {struct curl_slist* next; } ;


 char* match_header (struct curl_slist*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *search_header(struct curl_slist *hdrlist, const char *hdr)
{
  size_t len = strlen(hdr);
  char *value = ((void*)0);

  for(; !value && hdrlist; hdrlist = hdrlist->next)
    value = match_header(hdrlist, hdr, len);

  return value;
}
