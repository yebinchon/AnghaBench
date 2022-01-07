
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_transfer {void* added; int curl; struct per_transfer* next; } ;
struct GlobalConfig {scalar_t__ parallel_max; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLSH ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURLOPT_PRIVATE ;
 int CURLOPT_XFERINFODATA ;
 int CURLOPT_XFERINFOFUNCTION ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ all_added ;
 scalar_t__ create_transfer (struct GlobalConfig*,int *,int*) ;
 int curl_easy_setopt (int ,int ,struct per_transfer*) ;
 scalar_t__ curl_multi_add_handle (int *,int ) ;
 scalar_t__ pre_transfer (struct GlobalConfig*,struct per_transfer*) ;
 struct per_transfer* transfers ;
 struct per_transfer* xferinfo_cb ;

__attribute__((used)) static CURLcode add_parallel_transfers(struct GlobalConfig *global,
                                       CURLM *multi,
                                       CURLSH *share,
                                       bool *morep,
                                       bool *addedp)
{
  struct per_transfer *per;
  CURLcode result = CURLE_OK;
  CURLMcode mcode;
  *addedp = FALSE;
  *morep = FALSE;
  result = create_transfer(global, share, addedp);
  if(result || !*addedp)
    return result;
  for(per = transfers; per && (all_added < global->parallel_max);
      per = per->next) {
    bool getadded = FALSE;
    if(per->added)

      continue;

    result = pre_transfer(global, per);
    if(result)
      break;

    (void)curl_easy_setopt(per->curl, CURLOPT_PRIVATE, per);
    (void)curl_easy_setopt(per->curl, CURLOPT_XFERINFOFUNCTION, xferinfo_cb);
    (void)curl_easy_setopt(per->curl, CURLOPT_XFERINFODATA, per);

    mcode = curl_multi_add_handle(multi, per->curl);
    if(mcode)
      return CURLE_OUT_OF_MEMORY;

    result = create_transfer(global, share, &getadded);
    if(result)
      return result;
    per->added = TRUE;
    all_added++;
    *addedp = TRUE;
  }
  *morep = per ? TRUE : FALSE;
  return CURLE_OK;
}
