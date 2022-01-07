
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ len; scalar_t__ offset; int chunks; } ;
typedef TYPE_1__ network_queue ;
typedef scalar_t__ gsize ;
struct TYPE_12__ {scalar_t__ len; scalar_t__ str; } ;
typedef TYPE_2__ GString ;


 int TRUE ;
 TYPE_2__* g_queue_peek_head (int ) ;
 TYPE_2__* g_queue_pop_head (int ) ;
 int g_string_append_len (TYPE_2__*,scalar_t__,scalar_t__) ;
 int g_string_free (TYPE_2__*,int ) ;
 TYPE_2__* g_string_sized_new (scalar_t__) ;

GString *network_queue_pop_string(network_queue *queue, gsize steal_len, GString *dest) {
 gsize we_want = steal_len;
 GString *chunk;

 if (queue->len < steal_len) {
  return ((void*)0);
 }

 while ((chunk = g_queue_peek_head(queue->chunks))) {
  gsize we_have = we_want < (chunk->len - queue->offset) ? we_want : (chunk->len - queue->offset);

  if (!dest && (queue->offset == 0) && (chunk->len == steal_len)) {





   dest = g_queue_pop_head(queue->chunks);
   queue->len -= we_have;
   return dest;
  }

  if (!dest) {

   dest = g_string_sized_new(steal_len);
  }
  g_string_append_len(dest, chunk->str + queue->offset, we_have);

  queue->offset += we_have;
  queue->len -= we_have;
  we_want -= we_have;

  if (chunk->len == queue->offset) {

   g_string_free(g_queue_pop_head(queue->chunks), TRUE);
   queue->offset = 0;
  } else {
   break;
  }
 }

 return dest;
}
