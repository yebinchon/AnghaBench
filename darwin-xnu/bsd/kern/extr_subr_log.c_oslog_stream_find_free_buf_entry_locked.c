
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct msgbuf {int msg_bufr; int msg_size; } ;
typedef TYPE_1__* oslog_stream_buf_entry_t ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ size; } ;


 int LCK_ASSERT_OWNED ;
 int LCK_SPIN_ASSERT (int *,int ) ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int STAILQ_REMOVE_AFTER (int *,TYPE_1__*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int buf_entries ;
 int oslog_s_dropped_msgcount ;
 int oslog_stream_buf_head ;
 int oslog_stream_free_head ;
 scalar_t__ oslog_stream_link_type_metadata ;
 int oslog_stream_lock ;
 struct msgbuf* oslog_streambufp ;

__attribute__((used)) static oslog_stream_buf_entry_t
oslog_stream_find_free_buf_entry_locked(void)
{
 struct msgbuf *mbp;
 oslog_stream_buf_entry_t buf_entry = ((void*)0);

 LCK_SPIN_ASSERT(&oslog_stream_lock, LCK_ASSERT_OWNED);

 mbp = oslog_streambufp;

 buf_entry = STAILQ_FIRST(&oslog_stream_free_head);
 if (buf_entry) {
  STAILQ_REMOVE_HEAD(&oslog_stream_free_head, buf_entries);
 }
 else {


  oslog_stream_buf_entry_t prev_entry = ((void*)0);

  buf_entry = STAILQ_FIRST(&oslog_stream_buf_head);
  while (buf_entry->type == oslog_stream_link_type_metadata) {
   prev_entry = buf_entry;
   buf_entry = STAILQ_NEXT(buf_entry, buf_entries);
  }

  if (prev_entry == ((void*)0)) {
   STAILQ_REMOVE_HEAD(&oslog_stream_buf_head, buf_entries);
  }
  else {
   STAILQ_REMOVE_AFTER(&oslog_stream_buf_head, prev_entry, buf_entries);
  }

  mbp->msg_bufr += buf_entry->size;
  oslog_s_dropped_msgcount++;
  if (mbp->msg_bufr >= mbp->msg_size) {
   mbp->msg_bufr = (mbp->msg_bufr % mbp->msg_size);
  }
 }

 return buf_entry;
}
