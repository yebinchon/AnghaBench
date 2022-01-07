
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; int header; } ;
typedef TYPE_1__ WU_WEBPAGE ;


 int Free (TYPE_1__*) ;
 int FreeHttpHeader (int ) ;

void WuFreeWebPage(WU_WEBPAGE *page)
{
 if(page == ((void*)0))
 {
  return;
 }

 FreeHttpHeader(page->header);
 Free(page->data);
 Free(page);
}
