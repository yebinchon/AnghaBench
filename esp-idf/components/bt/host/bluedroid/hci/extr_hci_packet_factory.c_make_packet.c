
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; scalar_t__ layer_specific; scalar_t__ offset; scalar_t__ event; } ;
typedef TYPE_1__ BT_HDR ;


 int assert (TYPE_1__*) ;
 scalar_t__ osi_calloc (int) ;

__attribute__((used)) static BT_HDR *make_packet(size_t data_size)
{
    BT_HDR *ret = (BT_HDR *)osi_calloc(sizeof(BT_HDR) + data_size);
    assert(ret);
    ret->event = 0;
    ret->offset = 0;
    ret->layer_specific = 0;
    ret->len = data_size;
    return ret;
}
