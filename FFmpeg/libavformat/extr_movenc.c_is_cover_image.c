
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ disposition; } ;
typedef TYPE_1__ AVStream ;


 scalar_t__ AV_DISPOSITION_ATTACHED_PIC ;

__attribute__((used)) static int is_cover_image(const AVStream *st)
{


    return st && st->disposition == AV_DISPOSITION_ATTACHED_PIC;
}
