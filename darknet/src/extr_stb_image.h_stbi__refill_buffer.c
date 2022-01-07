
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read ) (int ,char*,int ) ;} ;
struct TYPE_5__ {scalar_t__* buffer_start; scalar_t__* img_buffer_end; scalar_t__* img_buffer; scalar_t__ read_from_callbacks; int buflen; int io_user_data; TYPE_1__ io; } ;
typedef TYPE_2__ stbi__context ;


 int stub1 (int ,char*,int ) ;

__attribute__((used)) static void stbi__refill_buffer(stbi__context *s)
{
   int n = (s->io.read)(s->io_user_data,(char*)s->buffer_start,s->buflen);
   if (n == 0) {


      s->read_from_callbacks = 0;
      s->img_buffer = s->buffer_start;
      s->img_buffer_end = s->buffer_start+1;
      *s->img_buffer = 0;
   } else {
      s->img_buffer = s->buffer_start;
      s->img_buffer_end = s->buffer_start + n;
   }
}
