
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int result ;
typedef int msg ;
struct TYPE_12__ {size_t element_count; TYPE_1__* elements; int commit_count; } ;
typedef TYPE_4__ WFC_SCENE_T ;
struct TYPE_14__ {int type; } ;
struct TYPE_11__ {void* ptr; } ;
struct TYPE_10__ {int * ptr; } ;
struct TYPE_13__ {size_t flags; TYPE_7__ header; int scene; TYPE_3__ scene_taken_data; TYPE_2__ scene_taken_cb; int context; } ;
typedef TYPE_5__ WFC_IPC_MSG_COMMIT_SCENE_T ;
typedef int * WFC_CALLBACK_T ;
typedef int WFCContext ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_9__ {int source_stream; } ;


 size_t VCOS_ENOSYS ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_COMMIT_SCENE ;
 size_t WFC_SERVER_COMMIT_WAIT ;
 int memcpy (int *,TYPE_4__ const*,int) ;
 int vcos_assert (int ) ;
 int vcos_log_trace (char*,int ,size_t,int ,...) ;
 scalar_t__ wfc_client_ipc_sendwait (TYPE_7__*,int,size_t*,size_t*) ;

uint32_t wfc_server_commit_scene(WFCContext context, const WFC_SCENE_T *scene,
      uint32_t flags, WFC_CALLBACK_T scene_taken_cb, void *scene_taken_data)
{
   WFC_IPC_MSG_COMMIT_SCENE_T msg;
   VCOS_STATUS_T status = VCOS_SUCCESS;
   uint32_t result = VCOS_ENOSYS;
   size_t result_len = sizeof(result);
   uint32_t i;

   vcos_log_trace("%s: context 0x%x commit %u elements %u flags 0x%x",
         VCOS_FUNCTION, context, scene->commit_count, scene->element_count, flags);
   for (i = 0; i < scene->element_count; i++)
   {
      vcos_log_trace("%s: element[%u] stream 0x%x", VCOS_FUNCTION, i, scene->elements[i].source_stream);
   }

   msg.header.type = WFC_IPC_MSG_COMMIT_SCENE;
   msg.context = context;
   msg.flags = flags;
   msg.scene_taken_cb.ptr = scene_taken_cb;
   msg.scene_taken_data.ptr = scene_taken_data;
   memcpy(&msg.scene, scene, sizeof(*scene));

   if (flags & WFC_SERVER_COMMIT_WAIT)
   {

      vcos_assert(scene_taken_cb != ((void*)0));
      vcos_assert(scene_taken_data != ((void*)0));
   }
   else
   {

      vcos_assert(scene_taken_cb == ((void*)0));
      vcos_assert(scene_taken_data == ((void*)0));
   }

   status = wfc_client_ipc_sendwait(&msg.header, sizeof(msg), &result, &result_len);


   if (status != VCOS_SUCCESS)
      result = status;

   return result;
}
