
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;


 int HOSTHEADER ;
 struct curl_slist* curl_slist_append (int *,int ) ;

__attribute__((used)) static struct curl_slist *sethost(struct curl_slist *headers)
{
  (void)headers;
  return curl_slist_append(((void*)0), HOSTHEADER);
}
