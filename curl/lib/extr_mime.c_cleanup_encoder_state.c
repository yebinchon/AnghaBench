
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufend; scalar_t__ bufbeg; scalar_t__ pos; } ;
typedef TYPE_1__ mime_encoder_state ;



__attribute__((used)) static void cleanup_encoder_state(mime_encoder_state *p)
{
  p->pos = 0;
  p->bufbeg = 0;
  p->bufend = 0;
}
