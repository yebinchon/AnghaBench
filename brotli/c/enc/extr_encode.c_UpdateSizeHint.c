
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ size_hint; } ;
struct TYPE_6__ {TYPE_1__ params; } ;
typedef TYPE_2__ BrotliEncoderState ;


 scalar_t__ UnprocessedInputSize (TYPE_2__*) ;

__attribute__((used)) static void UpdateSizeHint(BrotliEncoderState* s, size_t available_in) {
  if (s->params.size_hint == 0) {
    uint64_t delta = UnprocessedInputSize(s);
    uint64_t tail = available_in;
    uint32_t limit = 1u << 30;
    uint32_t total;
    if ((delta >= limit) || (tail >= limit) || ((delta + tail) >= limit)) {
      total = limit;
    } else {
      total = (uint32_t)(delta + tail);
    }
    s->params.size_hint = total;
  }
}
