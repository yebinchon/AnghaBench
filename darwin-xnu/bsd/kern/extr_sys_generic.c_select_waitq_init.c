
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNC_POLICY_FIFO ;
 int select_conflict_queue ;
 int waitq_init (int *,int ) ;

void
select_waitq_init(void)
{
 waitq_init(&select_conflict_queue, SYNC_POLICY_FIFO);
}
