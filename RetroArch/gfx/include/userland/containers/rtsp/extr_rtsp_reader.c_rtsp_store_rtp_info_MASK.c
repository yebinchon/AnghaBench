#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  reader; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINERS_LIST_T ;
struct TYPE_6__ {char* value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ RTSP_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  RTP_INFO_NAME ; 
 int /*<<< orphan*/  VC_CONTAINER_CONTROL_SET_NEXT_SEQUENCE_NUMBER ; 
 int /*<<< orphan*/  VC_CONTAINER_CONTROL_SET_TIMESTAMP_BASE ; 
 int /*<<< orphan*/  FUNC0 (char**,char**,char**) ; 
 int FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(VC_CONTAINERS_LIST_T *header_list,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   RTSP_HEADER_T header;
   char *ptr;

   header.name = RTP_INFO_NAME;
   if (!FUNC4(header_list, &header))
      return;

   ptr = header.value;
   while (ptr && *ptr)
   {
      char *name;
      char *value;

      if (!FUNC0(&ptr, &name, &value))
         continue;

      if (FUNC2(name, "rtptime") == 0)
      {
         unsigned int timestamp_base = 0;

         /* coverity[secure_coding] String is null-terminated */
         if (FUNC1(value, "%u", &timestamp_base) == 1)
            (void)FUNC3(t_module->reader, VC_CONTAINER_CONTROL_SET_TIMESTAMP_BASE, timestamp_base);
      }
      else if (FUNC2(name, "seq") == 0)
      {
         unsigned short int sequence_number = 0;

         /* coverity[secure_coding] String is null-terminated */
         if (FUNC1(value, "%hu", &sequence_number) == 1)
            (void)FUNC3(t_module->reader, VC_CONTAINER_CONTROL_SET_NEXT_SEQUENCE_NUMBER, (uint32_t)sequence_number);
      }
   }
}