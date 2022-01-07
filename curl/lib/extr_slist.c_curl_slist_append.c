
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;


 struct curl_slist* Curl_slist_append_nodup (struct curl_slist*,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

struct curl_slist *curl_slist_append(struct curl_slist *list,
                                     const char *data)
{
  char *dupdata = strdup(data);

  if(!dupdata)
    return ((void*)0);

  list = Curl_slist_append_nodup(list, dupdata);
  if(!list)
    free(dupdata);

  return list;
}
