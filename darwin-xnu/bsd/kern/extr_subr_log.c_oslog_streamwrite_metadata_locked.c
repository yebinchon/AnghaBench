
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oslog_stream_buf_entry_t ;


 int LCK_ASSERT_OWNED ;
 int LCK_SPIN_ASSERT (int *,int ) ;
 int STAILQ_INSERT_TAIL (int *,int ,int ) ;
 int buf_entries ;
 int oslog_stream_buf_head ;
 int oslog_stream_lock ;

void
oslog_streamwrite_metadata_locked(oslog_stream_buf_entry_t m_entry)
{
 LCK_SPIN_ASSERT(&oslog_stream_lock, LCK_ASSERT_OWNED);
 STAILQ_INSERT_TAIL(&oslog_stream_buf_head, m_entry, buf_entries);

 return;
}
