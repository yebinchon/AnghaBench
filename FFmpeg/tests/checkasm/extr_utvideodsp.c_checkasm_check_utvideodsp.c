
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int restore_rgb_planes10; int restore_rgb_planes; } ;
typedef TYPE_1__ UTVideoDSPContext ;


 scalar_t__ check_func (int ,char*) ;
 int check_restore_rgb_planes () ;
 int check_restore_rgb_planes10 () ;
 int ff_utvideodsp_init (TYPE_1__*) ;
 int report (char*) ;

void checkasm_check_utvideodsp(void)
{
    UTVideoDSPContext h;

    ff_utvideodsp_init(&h);

    if (check_func(h.restore_rgb_planes, "restore_rgb_planes"))
        check_restore_rgb_planes();

    report("restore_rgb_planes");

    if (check_func(h.restore_rgb_planes10, "restore_rgb_planes10"))
        check_restore_rgb_planes10();

    report("restore_rgb_planes10");
}
