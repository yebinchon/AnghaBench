
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct VSState {scalar_t__ vss; } ;


 int vsscript_finalize () ;
 int vsscript_freeScript (scalar_t__) ;

__attribute__((used)) static void free_vss_state(void *opaque, uint8_t *data)
{
    struct VSState *vss = opaque;

    if (vss->vss) {
        vsscript_freeScript(vss->vss);
        vsscript_finalize();
    }
}
