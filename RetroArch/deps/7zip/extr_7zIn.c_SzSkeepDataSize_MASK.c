#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ Size; size_t Data; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CSzData ;

/* Variables and functions */
 int /*<<< orphan*/  SZ_ERROR_ARCHIVE ; 
 int /*<<< orphan*/  SZ_OK ; 

__attribute__((used)) static SRes FUNC0(CSzData *sd, uint64_t size)
{
   if (size > sd->Size)
      return SZ_ERROR_ARCHIVE;
   sd->Size -= (size_t)size;
   sd->Data += (size_t)size;
   return SZ_OK;
}