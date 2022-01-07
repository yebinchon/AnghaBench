
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_heuristics_head {int thh_mtx; } ;


 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void tcp_heuristic_unlock(struct tcp_heuristics_head *head)
{
 lck_mtx_unlock(&head->thh_mtx);
}
