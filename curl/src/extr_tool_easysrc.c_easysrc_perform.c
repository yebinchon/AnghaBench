
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_3__ {struct curl_slist* first; } ;
typedef int CURLcode ;


 int CHKRET (int ) ;
 int CURLE_OK ;
 int easysrc_add (int *,char const*) ;
 int easysrc_code ;
 TYPE_1__* easysrc_toohard ;
 int slist_wc_free_all (TYPE_1__*) ;
 char** srchard ;

CURLcode easysrc_perform(void)
{

  if(easysrc_toohard) {
    int i;
    struct curl_slist *ptr;
    const char *c;
    CHKRET(easysrc_add(&easysrc_code, ""));

    for(i = 0; ((c = srchard[i]) != ((void*)0)); i++)
      CHKRET(easysrc_add(&easysrc_code, c));

    if(easysrc_toohard) {
      for(ptr = easysrc_toohard->first; ptr; ptr = ptr->next)
        CHKRET(easysrc_add(&easysrc_code, ptr->data));
    }
    CHKRET(easysrc_add(&easysrc_code, ""));
    CHKRET(easysrc_add(&easysrc_code, "*/"));

    slist_wc_free_all(easysrc_toohard);
    easysrc_toohard = ((void*)0);
  }

  CHKRET(easysrc_add(&easysrc_code, ""));
  CHKRET(easysrc_add(&easysrc_code, "ret = curl_easy_perform(hnd);"));
  CHKRET(easysrc_add(&easysrc_code, ""));

  return CURLE_OK;
}
