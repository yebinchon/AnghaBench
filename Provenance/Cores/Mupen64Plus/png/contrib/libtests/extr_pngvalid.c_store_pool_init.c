
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mark; scalar_t__ max_total; scalar_t__ max_limit; scalar_t__ max_max; scalar_t__ total; scalar_t__ limit; scalar_t__ current; scalar_t__ max; int * list; int * store; } ;
typedef TYPE_1__ store_pool ;
typedef int png_store ;


 int memset (TYPE_1__*,int ,int) ;
 int store_pool_mark (int ) ;

__attribute__((used)) static void
store_pool_init(png_store *ps, store_pool *pool)
{
   memset(pool, 0, sizeof *pool);

   pool->store = ps;
   pool->list = ((void*)0);
   pool->max = pool->current = pool->limit = pool->total = 0;
   pool->max_max = pool->max_limit = pool->max_total = 0;
   store_pool_mark(pool->mark);
}
