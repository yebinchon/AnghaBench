
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16_t ;
struct pbuf {scalar_t__ payload; void* len; int type_internal; int * next; void* tot_len; } ;
typedef int pbuf_type ;
typedef int pbuf_layer ;


 void* MEMP_PBUF_POOL ;
 int PBUF_POOL ;
 scalar_t__ malloc (void*) ;

struct pbuf * pbuf_alloc(pbuf_layer layer, u16_t length, pbuf_type type)
{
    struct pbuf * p;
    p = (struct pbuf *)malloc(MEMP_PBUF_POOL);
    p->tot_len = length;
    p->next = ((void*)0);
    p->type_internal = PBUF_POOL;
    p->len = length;
    p->payload = malloc(length);
    return p;
}
