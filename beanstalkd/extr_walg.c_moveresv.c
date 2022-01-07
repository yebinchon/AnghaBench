
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resv; int free; } ;
typedef TYPE_1__ File ;



__attribute__((used)) static void
moveresv(File *to, File *from, int n)
{
    from->resv -= n;
    from->free += n;
    to->resv += n;
    to->free -= n;
}
