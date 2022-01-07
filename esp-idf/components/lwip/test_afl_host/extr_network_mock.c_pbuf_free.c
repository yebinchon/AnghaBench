
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {struct pbuf* payload; } ;


 int free (struct pbuf*) ;

u8_t pbuf_free(struct pbuf *p)
{
    if (p) {
        if (p->payload) {
            free(p->payload);
            p->payload = ((void*)0);
        }
        free (p);
        p = ((void*)0);
    }
    return 1;
}
