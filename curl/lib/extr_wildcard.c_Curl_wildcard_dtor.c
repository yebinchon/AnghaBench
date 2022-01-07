
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WildcardData {int state; int * customptr; int * pattern; int * path; int filelist; int * protdata; int (* dtor ) (int *) ;} ;


 int CURLWC_INIT ;
 int Curl_llist_destroy (int *,int *) ;
 int DEBUGASSERT (int ) ;
 int ZERO_NULL (int *) ;
 int free (int *) ;
 int stub1 (int *) ;

void Curl_wildcard_dtor(struct WildcardData *wc)
{
  if(!wc)
    return;

  if(wc->dtor) {
    wc->dtor(wc->protdata);
    wc->dtor = ZERO_NULL;
    wc->protdata = ((void*)0);
  }
  DEBUGASSERT(wc->protdata == ((void*)0));

  Curl_llist_destroy(&wc->filelist, ((void*)0));


  free(wc->path);
  wc->path = ((void*)0);
  free(wc->pattern);
  wc->pattern = ((void*)0);

  wc->customptr = ((void*)0);
  wc->state = CURLWC_INIT;
}
