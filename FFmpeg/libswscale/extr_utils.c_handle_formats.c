
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dstXYZ; scalar_t__ srcXYZ; int dstFormat; int srcFormat; int dst0Alpha; int src0Alpha; } ;
typedef TYPE_1__ SwsContext ;


 int fill_xyztables (TYPE_1__*) ;
 int handle_0alpha (int *) ;
 scalar_t__ handle_xyz (int *) ;

__attribute__((used)) static void handle_formats(SwsContext *c)
{
    c->src0Alpha |= handle_0alpha(&c->srcFormat);
    c->dst0Alpha |= handle_0alpha(&c->dstFormat);
    c->srcXYZ |= handle_xyz(&c->srcFormat);
    c->dstXYZ |= handle_xyz(&c->dstFormat);
    if (c->srcXYZ || c->dstXYZ)
        fill_xyztables(c);
}
