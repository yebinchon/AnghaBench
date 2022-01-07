
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XVID_ERR_FAIL ;






 int xvid_ff_2pass_after (void*,void*) ;
 int xvid_ff_2pass_before (void*,void*) ;
 int xvid_ff_2pass_create (void*,void*) ;
 int xvid_ff_2pass_destroy (void*,void*) ;

__attribute__((used)) static int xvid_ff_2pass(void *ref, int cmd, void *p1, void *p2)
{
    switch (cmd) {
    case 128:
    case 129:
        return 0;
    case 132:
        return xvid_ff_2pass_before(ref, p1);
    case 131:
        return xvid_ff_2pass_create(p1, p2);
    case 133:
        return xvid_ff_2pass_after(ref, p1);
    case 130:
        return xvid_ff_2pass_destroy(ref, p1);
    default:
        return XVID_ERR_FAIL;
    }
}
