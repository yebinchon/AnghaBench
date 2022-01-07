
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shutdown; } ;
typedef TYPE_1__ ogg_buffer_state ;


 int _ogg_buffer_destroy (TYPE_1__*) ;

__attribute__((used)) static void ogg_buffer_destroy(ogg_buffer_state *bs){
  bs->shutdown=1;
  _ogg_buffer_destroy(bs);
}
