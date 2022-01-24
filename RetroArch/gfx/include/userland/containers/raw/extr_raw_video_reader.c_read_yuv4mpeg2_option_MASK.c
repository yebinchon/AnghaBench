#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {char* option; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5( VC_CONTAINER_T *ctx,
   unsigned int *bytes_left )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   unsigned int size, i;

   /* Start by skipping spaces */
   while (*bytes_left && FUNC2(ctx) == ' ')
      (*bytes_left)--, FUNC4(ctx);

   size = FUNC1(ctx, module->option,
      FUNC0(sizeof(module->option), *bytes_left));

   /* The config option ends at next space or newline */
   for (i = 0; i < size; i++)
   {
      if (module->option[i] == ' ' || module->option[i] == 0x0a)
      {
         module->option[i] = 0;
         break;
      }
   }
   if (i == 0)
      return VC_CONTAINER_ERROR_NOT_FOUND;

   *bytes_left -= i;
   FUNC3(ctx, i);

   /* If option is too long, we just discard it */
   if (i == size)
   {
      while (*bytes_left && FUNC2(ctx) != ' ' && FUNC2(ctx) != 0x0a)
         (*bytes_left)--, FUNC4(ctx);
      return VC_CONTAINER_ERROR_NOT_FOUND;
   }

   return VC_CONTAINER_SUCCESS;
}