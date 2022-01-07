
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; int (* func ) (int ,unsigned char*,int) ;} ;
typedef TYPE_1__ stbi__write_context ;


 int STBIW_ASSERT (int) ;
 unsigned char STBIW_UCHAR (int) ;
 int stub1 (int ,unsigned char*,int) ;
 int stub2 (int ,unsigned char*,int) ;

void stbiw__write_dump_data(stbi__write_context *s, int length, unsigned char *data)
{
   unsigned char lengthbyte = STBIW_UCHAR(length);
   STBIW_ASSERT(length <= 128);
   s->func(s->context, &lengthbyte, 1);
   s->func(s->context, data, length);
}
