
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xvid_plg_destroy_t ;
struct xvid_context {scalar_t__* twopassbuffer; } ;



__attribute__((used)) static int xvid_ff_2pass_destroy(struct xvid_context *ref,
                                 xvid_plg_destroy_t *param)
{


    if (ref->twopassbuffer)
        ref->twopassbuffer[0] = 0;
    return 0;
}
