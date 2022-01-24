#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* vertex_buf; scalar_t__* tex; } ;
struct TYPE_11__ {TYPE_3__* luts; TYPE_1__ prev; } ;
struct TYPE_12__ {TYPE_4__ chain; } ;
typedef  TYPE_5__ hlsl_renderchain_t ;
struct TYPE_10__ {unsigned int count; TYPE_2__* data; } ;
struct TYPE_9__ {scalar_t__ tex; } ;

/* Variables and functions */
 unsigned int TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(hlsl_renderchain_t *chain)
{
   unsigned i;

   for (i = 0; i < TEXTURES; i++)
   {
      if (chain->chain.prev.tex[i])
         FUNC1(chain->chain.prev.tex[i]);
      if (chain->chain.prev.vertex_buf[i])
         FUNC2(chain->chain.prev.vertex_buf[i], NULL);
   }

   FUNC0(chain);

   for (i = 0; i < chain->chain.luts->count; i++)
   {
      if (chain->chain.luts->data[i].tex)
         FUNC1(chain->chain.luts->data[i].tex);
   }
}