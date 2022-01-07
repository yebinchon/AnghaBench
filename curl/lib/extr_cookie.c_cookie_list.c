
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_slist {int dummy; } ;
struct Curl_easy {TYPE_1__* cookies; } ;
struct Cookie {int domain; struct Cookie* next; } ;
struct TYPE_2__ {scalar_t__ numcookies; struct Cookie** cookies; } ;


 unsigned int COOKIE_HASH_SIZE ;
 struct curl_slist* Curl_slist_append_nodup (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int free (char*) ;
 char* get_netscape_format (struct Cookie*) ;

__attribute__((used)) static struct curl_slist *cookie_list(struct Curl_easy *data)
{
  struct curl_slist *list = ((void*)0);
  struct curl_slist *beg;
  struct Cookie *c;
  char *line;
  unsigned int i;

  if((data->cookies == ((void*)0)) ||
      (data->cookies->numcookies == 0))
    return ((void*)0);

  for(i = 0; i < COOKIE_HASH_SIZE; i++) {
    for(c = data->cookies->cookies[i]; c; c = c->next) {
      if(!c->domain)
        continue;
      line = get_netscape_format(c);
      if(!line) {
        curl_slist_free_all(list);
        return ((void*)0);
      }
      beg = Curl_slist_append_nodup(list, line);
      if(!beg) {
        free(line);
        curl_slist_free_all(list);
        return ((void*)0);
      }
      list = beg;
    }
  }

  return list;
}
