
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_transfer {int mlfile; int curl; } ;
struct GlobalConfig {int current; scalar_t__ fail_early; scalar_t__ test_event_based; scalar_t__ libcurl; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLSH ;


 scalar_t__ CURLE_OK ;
 int FALSE ;
 int TRUE ;
 scalar_t__ create_transfer (struct GlobalConfig*,int *,int*) ;
 scalar_t__ curl_easy_perform (int ) ;
 scalar_t__ curl_easy_perform_ev (int ) ;
 struct per_transfer* del_per_transfer (struct per_transfer*) ;
 int delete_metalinkfile (int ) ;
 scalar_t__ easysrc_perform () ;
 scalar_t__ is_fatal_error (scalar_t__) ;
 scalar_t__ post_per_transfer (struct GlobalConfig*,struct per_transfer*,scalar_t__,int*) ;
 scalar_t__ pre_transfer (struct GlobalConfig*,struct per_transfer*) ;
 int single_transfer_cleanup (int ) ;
 struct per_transfer* transfers ;

__attribute__((used)) static CURLcode serial_transfers(struct GlobalConfig *global,
                                 CURLSH *share)
{
  CURLcode returncode = CURLE_OK;
  CURLcode result = CURLE_OK;
  struct per_transfer *per;
  bool added = FALSE;

  result = create_transfer(global, share, &added);
  if(result || !added)
    return result;
  for(per = transfers; per;) {
    bool retry;
    bool bailout = FALSE;
    result = pre_transfer(global, per);
    if(result)
      break;


    if(global->libcurl) {
      result = easysrc_perform();
      if(result)
        break;
    }






      result = curl_easy_perform(per->curl);


    returncode = result;

    result = post_per_transfer(global, per, result, &retry);
    if(retry)
      continue;


    if(result || is_fatal_error(returncode) ||
       (returncode && global->fail_early))
      bailout = TRUE;
    else {

      result = create_transfer(global, share, &added);
      if(result)
        bailout = TRUE;
    }


    delete_metalinkfile(per->mlfile);

    per = del_per_transfer(per);

    if(bailout)
      break;
  }
  if(returncode)

    result = returncode;

  if(result)
    single_transfer_cleanup(global->current);

  return result;
}
