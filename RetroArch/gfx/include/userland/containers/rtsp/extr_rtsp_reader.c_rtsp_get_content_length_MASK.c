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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RTSP_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_LENGTH_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static uint32_t FUNC2( VC_CONTAINERS_LIST_T *header_list )
{
   unsigned int content_length = 0;
   RTSP_HEADER_T header;

   header.name = CONTENT_LENGTH_NAME;
   if (header_list && FUNC1(header_list, &header))
      /* coverity[secure_coding] String is null-terminated */
      FUNC0(header.value, "%u", &content_length);

   return content_length;
}