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
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,unsigned int) ; 

__attribute__((used)) static VC_CONTAINER_METADATA_T *FUNC4( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_METADATA_KEY_T key, const char *value )
{
   VC_CONTAINER_METADATA_T *meta;
   unsigned int len = FUNC2(value);

   if ((meta = FUNC1(p_ctx, key, len + 1)) != NULL)
   {
      unsigned int size = meta->size - 1;

      if (len > size)
      {
         FUNC0(p_ctx, "metadata value truncated (%d characters lost)", len - size);
      }

      FUNC3(meta->value, value, size);
   }

   return meta;
}