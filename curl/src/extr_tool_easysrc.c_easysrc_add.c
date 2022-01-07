
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slist_wc {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int easysrc_free () ;
 struct slist_wc* slist_wc_append (struct slist_wc*,char const*) ;

CURLcode easysrc_add(struct slist_wc **plist, const char *line)
{
  CURLcode ret = CURLE_OK;
  struct slist_wc *list = slist_wc_append(*plist, line);
  if(!list) {
    easysrc_free();
    ret = CURLE_OUT_OF_MEMORY;
  }
  else
    *plist = list;
  return ret;
}
