
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ output_bytes; int pb; } ;
typedef TYPE_1__ LZWEncodeState ;


 int put_bits_count (int *) ;

__attribute__((used)) static int writtenBytes(LZWEncodeState *s){
    int ret = put_bits_count(&s->pb) >> 3;
    ret -= s->output_bytes;
    s->output_bytes += ret;
    return ret;
}
