
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct pbuf {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;

err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset)
{
    return ERR_OK;
}
