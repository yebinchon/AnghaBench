
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ head; scalar_t__ tail; int active_record_count; } ;
typedef TYPE_1__ btlog_t ;
typedef scalar_t__ btlog_recordindex_t ;
struct TYPE_7__ {scalar_t__ next; } ;
typedef TYPE_2__ btlog_record_t ;


 scalar_t__ BTLOG_RECORDINDEX_NONE ;
 int assert (int) ;
 TYPE_2__* lookup_btrecord (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
btlog_append_record_to_activelist(btlog_t *btlog, btlog_recordindex_t recindex)
{

 assert(recindex != BTLOG_RECORDINDEX_NONE);

 if (btlog->head == BTLOG_RECORDINDEX_NONE) {

  btlog->head = btlog->tail = recindex;
 } else {
  btlog_record_t *record = lookup_btrecord(btlog, btlog->tail);
  record->next = recindex;
  btlog->tail = recindex;
 }
 btlog->active_record_count++;
}
