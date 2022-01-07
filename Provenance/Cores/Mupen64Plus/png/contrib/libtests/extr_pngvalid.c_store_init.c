
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * prev; } ;
struct TYPE_7__ {int chunkpos; int chunklen; scalar_t__ noptions; scalar_t__ npalette; int * palette; TYPE_1__ new; scalar_t__ IDAT_bits; scalar_t__ IDAT_size; scalar_t__ chunktype; scalar_t__ writepos; int * piwrite; int * pwrite; scalar_t__ image_h; scalar_t__ cb_row; scalar_t__ cb_image; int * image; scalar_t__ readpos; int * next; int * current; int saved; int * piread; int * pread; scalar_t__ nwarnings; scalar_t__ nerrors; scalar_t__ validated; scalar_t__ progressive; scalar_t__ speed; scalar_t__ saw_warning; scalar_t__ expect_warning; scalar_t__ expect_error; scalar_t__ treat_warnings_as_errors; scalar_t__ verbose; int write_memory_pool; int read_memory_pool; int exception_context; } ;
typedef TYPE_2__ png_store ;


 int init_exception_context (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int store_pool_init (TYPE_2__*,int *) ;

__attribute__((used)) static void
store_init(png_store* ps)
{
   memset(ps, 0, sizeof *ps);
   init_exception_context(&ps->exception_context);
   store_pool_init(ps, &ps->read_memory_pool);
   store_pool_init(ps, &ps->write_memory_pool);
   ps->verbose = 0;
   ps->treat_warnings_as_errors = 0;
   ps->expect_error = 0;
   ps->expect_warning = 0;
   ps->saw_warning = 0;
   ps->speed = 0;
   ps->progressive = 0;
   ps->validated = 0;
   ps->nerrors = ps->nwarnings = 0;
   ps->pread = ((void*)0);
   ps->piread = ((void*)0);
   ps->saved = ps->current = ((void*)0);
   ps->next = ((void*)0);
   ps->readpos = 0;
   ps->image = ((void*)0);
   ps->cb_image = 0;
   ps->cb_row = 0;
   ps->image_h = 0;
   ps->pwrite = ((void*)0);
   ps->piwrite = ((void*)0);
   ps->writepos = 0;
   ps->chunkpos = 8;
   ps->chunktype = 0;
   ps->chunklen = 16;
   ps->IDAT_size = 0;
   ps->IDAT_bits = 0;
   ps->new.prev = ((void*)0);
   ps->palette = ((void*)0);
   ps->npalette = 0;
   ps->noptions = 0;
}
