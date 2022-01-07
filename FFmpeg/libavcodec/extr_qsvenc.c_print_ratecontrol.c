
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mfxU16 ;
struct TYPE_3__ {scalar_t__ rc_mode; char const* name; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* rc_names ;

__attribute__((used)) static const char *print_ratecontrol(mfxU16 rc_mode)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(rc_names); i++)
        if (rc_mode == rc_names[i].rc_mode)
            return rc_names[i].name;
    return "unknown";
}
