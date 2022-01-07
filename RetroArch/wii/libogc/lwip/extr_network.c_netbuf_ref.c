
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct netbuf {TYPE_1__* p; TYPE_1__* ptr; } ;
struct TYPE_3__ {int tot_len; int len; void* payload; } ;


 int PBUF_REF ;
 int PBUF_TRANSPORT ;
 TYPE_1__* pbuf_alloc (int ,int ,int ) ;
 int pbuf_free (TYPE_1__*) ;

__attribute__((used)) static void netbuf_ref(struct netbuf *buf, const void *dataptr,u32 size)
{
 if(buf->p!=((void*)0)) pbuf_free(buf->p);
 buf->p = pbuf_alloc(PBUF_TRANSPORT,0,PBUF_REF);
 buf->p->payload = (void*)dataptr;
 buf->p->len = buf->p->tot_len = size;
 buf->ptr = buf->p;
}
