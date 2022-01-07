
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t lgblock; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ BrotliEncoderState ;



__attribute__((used)) static size_t InputBlockSize(BrotliEncoderState* s) {
  return (size_t)1 << s->params.lgblock;
}
