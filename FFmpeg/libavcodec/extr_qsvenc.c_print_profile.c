
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mfxU16 ;
struct TYPE_3__ {scalar_t__ profile; char const* name; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* profile_names ;

__attribute__((used)) static const char *print_profile(mfxU16 profile)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(profile_names); i++)
        if (profile == profile_names[i].profile)
            return profile_names[i].name;
    return "unknown";
}
