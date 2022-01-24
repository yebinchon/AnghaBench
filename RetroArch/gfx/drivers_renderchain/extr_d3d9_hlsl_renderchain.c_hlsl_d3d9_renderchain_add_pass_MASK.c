#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct unsigned_vector_list {int dummy; } ;
struct LinkInfo {TYPE_2__* pass; } ;
struct shader_pass {int /*<<< orphan*/  pool; struct unsigned_vector_list* attrib_map; scalar_t__ last_height; scalar_t__ last_width; struct LinkInfo info; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_4__ chain; } ;
typedef  TYPE_3__ hlsl_renderchain_t ;
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {TYPE_1__ source; } ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct shader_pass*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,struct shader_pass*,struct LinkInfo const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct shader_pass*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(
      void *data, const struct LinkInfo *info)
{
   struct shader_pass pass;
   hlsl_renderchain_t *chain   = (hlsl_renderchain_t*)data;

   pass.info                   = *info;
   pass.last_width             = 0;
   pass.last_height            = 0;
   pass.attrib_map             = (struct unsigned_vector_list*)
      FUNC3();
   pass.pool                   = D3DPOOL_DEFAULT;

   FUNC0(chain->chain.dev, &pass, info->pass->source.path);

   if (!FUNC2(&chain->chain, &pass))
      return false;

   return FUNC1(&chain->chain, &pass,
         info);
}