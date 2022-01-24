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
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {char const* value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RTSP_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SESSION_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static const char *FUNC1(VC_CONTAINERS_LIST_T *header_list)
{
   RTSP_HEADER_T header;

   header.name = SESSION_NAME;
   if (header_list && FUNC0(header_list, &header))
      return header.value;

   return "";
}