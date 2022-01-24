#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  file; } ;
struct sevenzip_context_t {TYPE_1__ archiveStream; int /*<<< orphan*/  allocImp; int /*<<< orphan*/  db; TYPE_2__* handle; int /*<<< orphan*/ * output; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
   struct sevenzip_context_t *sevenzip_context = (struct sevenzip_context_t*)data;

   if (!sevenzip_context)
      return;

   if (sevenzip_context->output)
   {
      FUNC1(&sevenzip_context->allocImp, sevenzip_context->output);
      sevenzip_context->output       = NULL;
      sevenzip_context->handle->data = NULL;
   }

   FUNC2(&sevenzip_context->db, &sevenzip_context->allocImp);
   FUNC0(&sevenzip_context->archiveStream.file);
}