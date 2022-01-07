
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {struct curl_slist* next; int data; } ;


 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;

struct curl_slist *Curl_slist_duplicate(struct curl_slist *inlist)
{
  struct curl_slist *outlist = ((void*)0);
  struct curl_slist *tmp;

  while(inlist) {
    tmp = curl_slist_append(outlist, inlist->data);

    if(!tmp) {
      curl_slist_free_all(outlist);
      return ((void*)0);
    }

    outlist = tmp;
    inlist = inlist->next;
  }
  return outlist;
}
