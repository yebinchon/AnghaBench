
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
struct TYPE_7__ {int dten_ndesc; TYPE_1__** dten_desc; } ;
typedef TYPE_3__ dtrace_enabling_t ;
struct TYPE_5__ {TYPE_2__ dted_probe; } ;


 int CE_NOTE ;
 int cmn_err (int ,char*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void
dtrace_enabling_dump(dtrace_enabling_t *enab)
{
 int i;

 for (i = 0; i < enab->dten_ndesc; i++) {
  dtrace_probedesc_t *desc = &enab->dten_desc[i]->dted_probe;

  cmn_err(CE_NOTE, "enabling probe %d (%s:%s:%s:%s)", i,
      desc->dtpd_provider, desc->dtpd_mod,
      desc->dtpd_func, desc->dtpd_name);
 }
}
