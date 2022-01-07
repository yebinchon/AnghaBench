
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int data; struct curl_slist* next; } ;


 struct curl_slist* Curl_slist_append_nodup (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 char* dynconvert (int,int ,int,int) ;
 int free (char*) ;

__attribute__((used)) static struct curl_slist *
slist_convert(int dccsid, struct curl_slist *from, int sccsid)

{
  struct curl_slist *to = (struct curl_slist *) ((void*)0);

  for(; from; from = from->next) {
    struct curl_slist *nl;
    char *cp = dynconvert(dccsid, from->data, -1, sccsid);

    if(!cp) {
      curl_slist_free_all(to);
      return (struct curl_slist *) ((void*)0);
    }
    nl = Curl_slist_append_nodup(to, cp);
    if(!nl) {
      curl_slist_free_all(to);
      free(cp);
      return ((void*)0);
    }
    to = nl;
  }
  return to;
}
