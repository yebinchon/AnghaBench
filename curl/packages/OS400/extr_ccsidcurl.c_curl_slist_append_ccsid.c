
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;


 int ASCII_CCSID ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char const*) ;
 char* dynconvert (int ,char const*,int,unsigned int) ;
 int free (char*) ;

struct curl_slist *
curl_slist_append_ccsid(struct curl_slist *list,
                        const char *data, unsigned int ccsid)

{
  char *s;

  s = (char *) ((void*)0);

  if(!data)
    return curl_slist_append(list, data);

  s = dynconvert(ASCII_CCSID, data, -1, ccsid);

  if(!s)
    return (struct curl_slist *) ((void*)0);

  list = curl_slist_append(list, s);
  free(s);
  return list;
}
