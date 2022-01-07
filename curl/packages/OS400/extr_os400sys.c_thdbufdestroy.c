
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ localkey_t ;
struct TYPE_2__ {void* buf; } ;
typedef TYPE_1__ buffer_t ;


 scalar_t__ LK_LAST ;
 int free (void*) ;

__attribute__((used)) static void
thdbufdestroy(void * private)

{
  if(private) {
    buffer_t * p = (buffer_t *) private;
    localkey_t i;

    for(i = (localkey_t) 0; i < LK_LAST; i++) {
      free(p->buf);
      p++;
      }

    free(private);
    }
}
