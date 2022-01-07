
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* u16_t ;
struct pbuf {void* tot_len; void* len; int * payload; } ;


 int free (int *) ;
 int * malloc (void*) ;

void pbuf_realloc(struct pbuf *p, u16_t size)
{
    if (p != ((void*)0))
    {
        uint8_t *buf = malloc(size);
        free(p->payload);
        p->payload = buf;
        p->len = size;
        p->tot_len = size;
    }
}
