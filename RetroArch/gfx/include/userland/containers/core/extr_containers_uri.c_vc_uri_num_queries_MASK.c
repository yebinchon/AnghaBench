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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_queries; } ;
typedef  TYPE_1__ VC_URI_PARTS_T ;

/* Variables and functions */

uint32_t FUNC0( const VC_URI_PARTS_T *p_uri )
{
   return p_uri ? p_uri->num_queries : 0;
}