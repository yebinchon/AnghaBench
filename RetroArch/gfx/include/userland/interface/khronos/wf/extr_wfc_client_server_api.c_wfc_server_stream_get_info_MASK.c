#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  reply ;
struct TYPE_7__ {int size; } ;
typedef  TYPE_1__ WFC_STREAM_INFO_T ;
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
struct TYPE_8__ {int result; TYPE_6__ info; } ;
typedef  TYPE_2__ WFC_IPC_MSG_SS_GET_INFO_T ;
typedef  int /*<<< orphan*/  WFC_IPC_MSG_HEADER_T ;
typedef  int WFCNativeStreamType ;
typedef  int VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int VCOS_SUCCESS ; 
 int WFC_INVALID_HANDLE ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SS_GET_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int*,size_t*) ; 

uint32_t FUNC6(WFCNativeStreamType stream, WFC_STREAM_INFO_T *info)
{
   uint32_t result;
   VCOS_STATUS_T status;
   WFC_IPC_MSG_SS_GET_INFO_T reply;
   size_t info_len = sizeof(reply) - sizeof(WFC_IPC_MSG_HEADER_T);

   if (!info)
   {
      FUNC2("%s: NULL info pointer passed", VCOS_FUNCTION);
      return WFC_INVALID_HANDLE;
   }

   if (info->size < sizeof(uint32_t))
   {
      FUNC2("%s: invalid info pointer passed (size:%u)", VCOS_FUNCTION, info->size);
      return WFC_INVALID_HANDLE;
   }

   FUNC3("%s: stream 0x%x", VCOS_FUNCTION, stream);
   FUNC1(&reply, 0, sizeof(reply));
   status = FUNC5(WFC_IPC_MSG_SS_GET_INFO, stream, &reply.result, &info_len);

   if (status == VCOS_SUCCESS)
   {
      result = reply.result;

      if (result == VCOS_SUCCESS)
      {
         uint32_t copy_size = FUNC4(info->size, reply.info.size);
         FUNC0(info, &reply.info, copy_size);
         info->size = copy_size;
         FUNC3("%s: copied %u bytes", VCOS_FUNCTION, copy_size);
      }
      else
      {
         FUNC2("%s: result %d", VCOS_FUNCTION, result);
      }
   }
   else
   {
      FUNC2("%s: send msg status %d", VCOS_FUNCTION, status);
      result = status;
   }

   return result;
}