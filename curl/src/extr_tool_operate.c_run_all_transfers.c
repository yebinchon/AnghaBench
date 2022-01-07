
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_transfer {int config; } ;
struct GlobalConfig {int noprogress; int isatty; scalar_t__ parallel; } ;
typedef int CURLcode ;
typedef int CURLSH ;


 int clean_getout (int ) ;
 int clean_metalink (int ) ;
 struct per_transfer* del_per_transfer (struct per_transfer*) ;
 int parallel_transfers (struct GlobalConfig*,int *) ;
 int post_per_transfer (struct GlobalConfig*,struct per_transfer*,int ,int*) ;
 int serial_transfers (struct GlobalConfig*,int *) ;
 struct per_transfer* transfers ;

__attribute__((used)) static CURLcode run_all_transfers(struct GlobalConfig *global,
                                  CURLSH *share,
                                  CURLcode result)
{

  bool orig_noprogress = global->noprogress;
  bool orig_isatty = global->isatty;
  struct per_transfer *per;


  if(!result) {
    if(global->parallel)
      result = parallel_transfers(global, share);
    else
      result = serial_transfers(global, share);
  }


  for(per = transfers; per;) {
    bool retry;
    CURLcode result2 = post_per_transfer(global, per, result, &retry);
    if(!result)

      result = result2;


    clean_getout(per->config);


    clean_metalink(per->config);
    per = del_per_transfer(per);
  }


  global->noprogress = orig_noprogress;
  global->isatty = orig_isatty;


  return result;
}
