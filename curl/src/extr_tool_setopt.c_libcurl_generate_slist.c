
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int data; struct curl_slist* next; } ;
typedef int CURLcode ;


 int CLEAN1 (char*,int) ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURL_ZERO_TERMINATED ;
 int Curl_safefree (char*) ;
 int DATA1 (char*,int) ;
 int DATA3 (char*,int,int,char*) ;
 int DECL1 (char*,int) ;
 char* c_escape (int ,int ) ;
 int easysrc_slist_count ;

__attribute__((used)) static CURLcode libcurl_generate_slist(struct curl_slist *slist, int *slistno)
{
  CURLcode ret = CURLE_OK;
  char *escaped = ((void*)0);


  *slistno = ++easysrc_slist_count;

  DECL1("struct curl_slist *slist%d;", *slistno);
  DATA1("slist%d = NULL;", *slistno);
  CLEAN1("curl_slist_free_all(slist%d);", *slistno);
  CLEAN1("slist%d = NULL;", *slistno);
  for(; slist; slist = slist->next) {
    Curl_safefree(escaped);
    escaped = c_escape(slist->data, CURL_ZERO_TERMINATED);
    if(!escaped)
      return CURLE_OUT_OF_MEMORY;
    DATA3("slist%d = curl_slist_append(slist%d, \"%s\");",
                                       *slistno, *slistno, escaped);
  }

 nomem:
  Curl_safefree(escaped);
  return ret;
}
