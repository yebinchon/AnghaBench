
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unsynced; } ;
typedef TYPE_1__ ogg_sync_state ;
typedef int ogg_page ;


 int OGG_HOLE ;
 long ogg_sync_pageseek (TYPE_1__*,int *) ;

int ogg_sync_pageout(ogg_sync_state *oy, ogg_page *og){





  while(1){
    long ret=ogg_sync_pageseek(oy,og);
    if(ret>0){

      return 1;
    }
    if(ret==0){

      return 0;
    }


    if(!oy->unsynced){
      oy->unsynced=1;
      return OGG_HOLE;
    }



  }
}
