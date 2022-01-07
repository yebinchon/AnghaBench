
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nmode; TYPE_2__ const* modes; } ;
typedef TYPE_1__ XRRScreenResources ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef TYPE_2__ XRRModeInfo ;
typedef scalar_t__ RRMode ;



__attribute__((used)) static const XRRModeInfo* getModeInfo(const XRRScreenResources* sr, RRMode id)
{
    int i;

    for (i = 0; i < sr->nmode; i++)
    {
        if (sr->modes[i].id == id)
            return sr->modes + i;
    }

    return ((void*)0);
}
