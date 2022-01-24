#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ MipLevels; } ;
struct TYPE_7__ {int /*<<< orphan*/  upload_buffer; int /*<<< orphan*/  handle; TYPE_4__* cpu_descriptor; scalar_t__ srv_heap; TYPE_1__ desc; } ;
typedef  TYPE_2__ d3d12_texture_t ;
struct TYPE_8__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_4__) ; 

void FUNC3(d3d12_texture_t* texture)
{
   if (!texture->handle)
      return;

   if (texture->srv_heap && texture->desc.MipLevels <= FUNC1(texture->cpu_descriptor))
   {
      int i;
      for (i = 0; i < texture->desc.MipLevels; i++)
      {
         FUNC2(texture->srv_heap, texture->cpu_descriptor[i]);
         texture->cpu_descriptor[i].ptr = 0;
      }
   }

   FUNC0(texture->handle);
   FUNC0(texture->upload_buffer);
}