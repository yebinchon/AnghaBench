#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
struct TYPE_4__ {int size; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ VC_CONTAINER_METADATA_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static VC_CONTAINER_METADATA_T *FUNC4( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_METADATA_KEY_T key, unsigned int len )
{
   VC_CONTAINER_METADATA_T *meta;

   if ((meta = FUNC3(p_ctx, key, len + 1)) != NULL)
   {
      unsigned int size = meta->size - 1;
      FUNC1(p_ctx, meta->value, size);

      if (len > size)
      {
         FUNC0(p_ctx, "metadata value truncated (%d characters lost)", len - size);
         FUNC2(p_ctx, len - size);
      }
   }
   else
   {
      FUNC2(p_ctx, len);
   }

   return meta;
}