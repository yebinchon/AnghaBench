
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct GlobalConfig {TYPE_1__* current; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef int CURLcode ;
typedef int CURLSH ;


 int CURLE_OK ;
 int FALSE ;
 int transfer_per_config (struct GlobalConfig*,TYPE_1__*,int *,int*) ;

__attribute__((used)) static CURLcode create_transfer(struct GlobalConfig *global,
                                CURLSH *share,
                                bool *added)
{
  CURLcode result = CURLE_OK;
  *added = FALSE;
  while(global->current) {
    result = transfer_per_config(global, global->current, share, added);
    if(!result && !*added) {

      global->current = global->current->next;
      continue;
    }
    break;
  }
  return result;
}
