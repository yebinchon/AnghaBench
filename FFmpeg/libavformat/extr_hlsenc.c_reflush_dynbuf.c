
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int temp_buffer; int out; } ;
typedef TYPE_1__ VariantStream ;


 int avio_write (int ,int ,int) ;

__attribute__((used)) static void reflush_dynbuf(VariantStream *vs, int *range_length)
{

    avio_write(vs->out, vs->temp_buffer, *range_length);;
}
