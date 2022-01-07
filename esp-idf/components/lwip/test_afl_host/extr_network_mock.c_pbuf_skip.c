
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct pbuf {scalar_t__ len; struct pbuf* next; } ;



struct pbuf* pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset)
{
    u16_t offset_left = in_offset;
    struct pbuf* q = in;


    while ((q != ((void*)0)) && (q->len <= offset_left)) {
        offset_left -= q->len;
        q = q->next;
    }
    if (out_offset != ((void*)0)) {
        *out_offset = offset_left;
    }
    return q;
}
