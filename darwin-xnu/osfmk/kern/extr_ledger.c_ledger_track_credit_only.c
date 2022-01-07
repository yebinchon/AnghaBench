
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ledger_template_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int lt_cnt; TYPE_1__* lt_entries; } ;
struct TYPE_6__ {int et_flags; } ;


 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int LF_TRACK_CREDIT_ONLY ;
 int template_lock (TYPE_2__*) ;
 int template_unlock (TYPE_2__*) ;

kern_return_t
ledger_track_credit_only(ledger_template_t template, int entry)
{
 template_lock(template);

 if ((entry < 0) || (entry >= template->lt_cnt)) {
  template_unlock(template);
  return (KERN_INVALID_VALUE);
 }

 template->lt_entries[entry].et_flags |= LF_TRACK_CREDIT_ONLY;

 template_unlock(template);

 return (KERN_SUCCESS);
}
