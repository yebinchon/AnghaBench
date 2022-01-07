
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_18__ {TYPE_6__* draw; TYPE_5__* context; TYPE_1__* read; } ;
struct TYPE_15__ {TYPE_3__* draw; TYPE_2__* context; } ;
struct TYPE_19__ {TYPE_7__ opengl; TYPE_4__ openvg; } ;
struct TYPE_17__ {scalar_t__ is_destroyed; int context_binding_count; int serverbuffer; scalar_t__ name; } ;
struct TYPE_16__ {scalar_t__ is_destroyed; scalar_t__ is_current; int servercontext; scalar_t__ name; int type; } ;
struct TYPE_14__ {int serverbuffer; } ;
struct TYPE_13__ {int servercontext; } ;
struct TYPE_12__ {int serverbuffer; } ;
typedef int EGL_VG_CONTEXT_ID_T ;
typedef int EGL_SURFACE_ID_T ;
typedef int EGL_GL_CONTEXT_ID_T ;
typedef TYPE_8__ CLIENT_THREAD_STATE_T ;


 int EGLINTMAKECURRENT_ID ;
 int EGL_SERVER_NO_GL_CONTEXT ;
 int EGL_SERVER_NO_SURFACE ;
 int EGL_SERVER_NO_VG_CONTEXT ;
 int RPC_CALL8_MAKECURRENT (int ,TYPE_8__*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int RPC_UINT (int ) ;
 int convert_gltype (int ) ;
 int eglIntMakeCurrent_impl ;
 int rpc_get_client_id (TYPE_8__*) ;
 int vcos_log_trace (char*,int,unsigned int,...) ;

void client_send_make_current(CLIENT_THREAD_STATE_T *thread)
{
   uint64_t pid = rpc_get_client_id(thread);
   uint32_t gltype = thread->opengl.context ? convert_gltype(thread->opengl.context->type) : 0;
   EGL_GL_CONTEXT_ID_T servergl = thread->opengl.context ? thread->opengl.context->servercontext : EGL_SERVER_NO_GL_CONTEXT;
   EGL_SURFACE_ID_T servergldraw = thread->opengl.draw ? thread->opengl.draw->serverbuffer : EGL_SERVER_NO_SURFACE;
   EGL_SURFACE_ID_T serverglread = thread->opengl.read ? thread->opengl.read->serverbuffer : EGL_SERVER_NO_SURFACE;
   EGL_VG_CONTEXT_ID_T servervg = thread->openvg.context ? thread->openvg.context->servercontext : EGL_SERVER_NO_VG_CONTEXT;
   EGL_SURFACE_ID_T servervgsurf = thread->openvg.draw ? thread->openvg.draw->serverbuffer : EGL_SERVER_NO_SURFACE;






   if (!thread->opengl.context || !thread->opengl.draw)
   {
      vcos_log_trace("Send null make current %x %x",
                 (unsigned int)(char *)thread->opengl.context, (unsigned int)(char *)thread->opengl.draw);
   }
   else
   {
      vcos_log_trace("Send make current %d[%d %s%s] %d[%d %d%s]",
            (int)thread->opengl.context->name,
            thread->opengl.context->servercontext,
            thread->opengl.context->is_current ? " C" : "",
            thread->opengl.context->is_destroyed ? " D" : "",
            (int)thread->opengl.draw->name,
            thread->opengl.draw->serverbuffer,
            thread->opengl.draw->context_binding_count,
            thread->opengl.draw->is_destroyed ? " D" : "");
   }

   RPC_CALL8_MAKECURRENT(eglIntMakeCurrent_impl,
                         thread,
                         EGLINTMAKECURRENT_ID,
                         RPC_UINT((uint32_t)pid),
                         RPC_UINT((uint32_t)(pid >> 32)),
                         RPC_UINT(gltype),
                         RPC_UINT(servergl),
                         RPC_UINT(servergldraw),
                         RPC_UINT(serverglread),
                         RPC_UINT(servervg),
                         RPC_UINT(servervgsurf));
}
