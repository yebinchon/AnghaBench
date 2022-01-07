
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; scalar_t__ offset; void* ptr; } ;
typedef TYPE_1__ mime_state ;
typedef enum mimestate { ____Placeholder_mimestate } mimestate ;



__attribute__((used)) static void mimesetstate(mime_state *state, enum mimestate tok, void *ptr)
{
  state->state = tok;
  state->ptr = ptr;
  state->offset = 0;
}
