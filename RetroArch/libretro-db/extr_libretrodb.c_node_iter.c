
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct node_iter_ctx {TYPE_2__* idx; TYPE_1__* db; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ key_size; } ;
struct TYPE_3__ {int fd; } ;


 scalar_t__ filestream_write (int ,void*,int ) ;

__attribute__((used)) static int node_iter(void *value, void *ctx)
{
   struct node_iter_ctx *nictx = (struct node_iter_ctx*)ctx;

   if (filestream_write(nictx->db->fd, value,
            (ssize_t)(nictx->idx->key_size + sizeof(uint64_t))) > 0)
      return 0;

   return -1;
}
