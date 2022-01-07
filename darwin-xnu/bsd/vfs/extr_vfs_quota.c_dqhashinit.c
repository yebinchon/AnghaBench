
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DQUOT ;
 int TAILQ_INIT (int *) ;
 int desiredvnodes ;
 int dq_list_lock () ;
 int dq_list_unlock () ;
 int dqdirtylist ;
 int dqfreelist ;
 int dqhash ;
 int dqhashtbl ;
 scalar_t__ dqisinitialized () ;
 int hashinit (int ,int ,int *) ;

void
dqhashinit(void)
{
 dq_list_lock();
 if (dqisinitialized())
  goto out;

 TAILQ_INIT(&dqfreelist);
 TAILQ_INIT(&dqdirtylist);
 dqhashtbl = hashinit(desiredvnodes, M_DQUOT, &dqhash);
out:
 dq_list_unlock();
}
