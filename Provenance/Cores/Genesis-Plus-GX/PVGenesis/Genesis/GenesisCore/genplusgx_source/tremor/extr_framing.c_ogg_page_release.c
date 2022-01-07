
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int body; int header; } ;
typedef TYPE_1__ ogg_page ;


 int OGG_SUCCESS ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_buffer_release (int ) ;

int ogg_page_release(ogg_page *og) {
  if(og){
    ogg_buffer_release(og->header);
    ogg_buffer_release(og->body);
    memset(og, 0, sizeof(*og));
  }
  return OGG_SUCCESS;
}
