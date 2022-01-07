
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef size_t u16_t ;
struct pbuf {size_t len; scalar_t__ payload; } ;


 struct pbuf* pbuf_skip (struct pbuf const*,size_t,size_t*) ;

int pbuf_try_get_at(const struct pbuf* p, u16_t offset)
{
    u16_t q_idx;
    struct pbuf* q = pbuf_skip(p, offset, &q_idx);


    if ((q != ((void*)0)) && (q->len > q_idx)) {
        return ((u8_t*)q->payload)[q_idx];
    }
    return -1;
}
