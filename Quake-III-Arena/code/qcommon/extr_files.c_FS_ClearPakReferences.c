
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pack; struct TYPE_5__* next; } ;
typedef TYPE_2__ searchpath_t ;
struct TYPE_4__ {int referenced; } ;


 TYPE_2__* fs_searchpaths ;

void FS_ClearPakReferences( int flags ) {
 searchpath_t *search;

 if ( !flags ) {
  flags = -1;
 }
 for ( search = fs_searchpaths; search; search = search->next ) {

  if ( search->pack ) {
   search->pack->referenced &= ~flags;
  }
 }
}
