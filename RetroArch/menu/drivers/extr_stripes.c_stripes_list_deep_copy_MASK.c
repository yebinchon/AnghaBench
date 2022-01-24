#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct item_file {int /*<<< orphan*/ * label; int /*<<< orphan*/ * path; int /*<<< orphan*/ * alt; void* actiondata; void* userdata; } ;
typedef  int /*<<< orphan*/  stripes_node_t ;
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_9__ {size_t size; struct item_file* list; } ;
typedef  TYPE_1__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,void*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (uintptr_t*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC11(const file_list_t *src, file_list_t *dst,
      size_t first, size_t last)
{
   size_t i, j = 0;
   menu_animation_ctx_tag tag = (uintptr_t)dst;

   FUNC6(&tag);

   FUNC10(dst, true);

   FUNC0(dst);
   FUNC1(dst, (last + 1) - first);

   for (i = first; i <= last; ++i)
   {
      struct item_file *d = &dst->list[j];
      struct item_file *s = &src->list[i];

      void *src_udata = s->userdata;
      void *src_adata = s->actiondata;

      *d       = *s;
      d->alt   = FUNC8(d->alt)   ? NULL : FUNC7(d->alt);
      d->path  = FUNC8(d->path)  ? NULL : FUNC7(d->path);
      d->label = FUNC8(d->label) ? NULL : FUNC7(d->label);

      if (src_udata)
         FUNC3(dst, j, (void*)FUNC9((const stripes_node_t*)src_udata));

      if (src_adata)
      {
         void *data = FUNC4(sizeof(menu_file_list_cbs_t));
         FUNC5(data, src_adata, sizeof(menu_file_list_cbs_t));
         FUNC2(dst, j, data);
      }

      ++j;
   }

   dst->size = j;
}