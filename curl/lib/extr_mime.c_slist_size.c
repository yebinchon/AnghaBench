
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {char const* data; struct curl_slist* next; } ;


 int match_header (struct curl_slist*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t slist_size(struct curl_slist *s,
                         size_t overhead, const char *skip)
{
  size_t size = 0;
  size_t skiplen = skip? strlen(skip): 0;

  for(; s; s = s->next)
    if(!skip || !match_header(s, skip, skiplen))
      size += strlen(s->data) + overhead;
  return size;
}
