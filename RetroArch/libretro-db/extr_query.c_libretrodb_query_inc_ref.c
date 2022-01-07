
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query {int ref_count; } ;
typedef int libretrodb_query_t ;



void libretrodb_query_inc_ref(libretrodb_query_t *q)
{
   struct query *rq = (struct query*)q;
   if (rq)
      rq->ref_count += 1;
}
