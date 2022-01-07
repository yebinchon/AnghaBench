
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int count; TYPE_2__* palette; } ;
typedef TYPE_1__ PGSSubPalettes ;
typedef TYPE_2__ PGSSubPalette ;



__attribute__((used)) static PGSSubPalette * find_palette(int id, PGSSubPalettes *palettes)
{
    int i;

    for (i = 0; i < palettes->count; i++) {
        if (palettes->palette[i].id == id)
            return &palettes->palette[i];
    }
    return ((void*)0);
}
