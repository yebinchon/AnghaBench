
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; scalar_t__ offset; scalar_t__ level; } ;
struct TYPE_5__ {TYPE_1__ peak; } ;
typedef TYPE_2__ CFHDContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void init_peak_table_defaults(CFHDContext *s)
{
    s->peak.level = 0;
    s->peak.offset = 0;
    memset(&s->peak.base, 0, sizeof(s->peak.base));
}
