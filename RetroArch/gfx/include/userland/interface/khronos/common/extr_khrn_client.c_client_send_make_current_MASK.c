#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_18__ {TYPE_6__* draw; TYPE_5__* context; TYPE_1__* read; } ;
struct TYPE_15__ {TYPE_3__* draw; TYPE_2__* context; } ;
struct TYPE_19__ {TYPE_7__ opengl; TYPE_4__ openvg; } ;
struct TYPE_17__ {scalar_t__ is_destroyed; int /*<<< orphan*/  context_binding_count; int /*<<< orphan*/  serverbuffer; scalar_t__ name; } ;
struct TYPE_16__ {scalar_t__ is_destroyed; scalar_t__ is_current; int /*<<< orphan*/  servercontext; scalar_t__ name; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  serverbuffer; } ;
struct TYPE_13__ {int /*<<< orphan*/  servercontext; } ;
struct TYPE_12__ {int /*<<< orphan*/  serverbuffer; } ;
typedef  int /*<<< orphan*/  EGL_VG_CONTEXT_ID_T ;
typedef  int /*<<< orphan*/  EGL_SURFACE_ID_T ;
typedef  int /*<<< orphan*/  EGL_GL_CONTEXT_ID_T ;
typedef  TYPE_8__ CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  EGLINTMAKECURRENT_ID ; 
 int /*<<< orphan*/  EGL_SERVER_NO_GL_CONTEXT ; 
 int /*<<< orphan*/  EGL_SERVER_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_SERVER_NO_VG_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eglIntMakeCurrent_impl ; 
 int FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned int,...) ; 

void FUNC5(CLIENT_THREAD_STATE_T *thread)
{
   uint64_t pid                  = FUNC3(thread);
   uint32_t gltype               = thread->opengl.context ? FUNC2(thread->opengl.context->type) : 0;
   EGL_GL_CONTEXT_ID_T servergl  = thread->opengl.context ? thread->opengl.context->servercontext : EGL_SERVER_NO_GL_CONTEXT;
   EGL_SURFACE_ID_T servergldraw = thread->opengl.draw    ? thread->opengl.draw->serverbuffer     : EGL_SERVER_NO_SURFACE;
   EGL_SURFACE_ID_T serverglread = thread->opengl.read    ? thread->opengl.read->serverbuffer     : EGL_SERVER_NO_SURFACE;
   EGL_VG_CONTEXT_ID_T servervg  = thread->openvg.context ? thread->openvg.context->servercontext : EGL_SERVER_NO_VG_CONTEXT;
   EGL_SURFACE_ID_T servervgsurf = thread->openvg.draw    ? thread->openvg.draw->serverbuffer     : EGL_SERVER_NO_SURFACE;

   /*
      if the size of this call in the merge buffer changes,
      CLIENT_MAKE_CURRENT_SIZE in khrn_client.h should be updated
   */

   if (!thread->opengl.context || !thread->opengl.draw)
   {
      FUNC4("Send null make current %x %x",
                 (unsigned int)(char *)thread->opengl.context, (unsigned int)(char *)thread->opengl.draw);
   }
   else
   {
      FUNC4("Send make current %d[%d %s%s] %d[%d %d%s]",
            (int)thread->opengl.context->name,
            thread->opengl.context->servercontext,
            thread->opengl.context->is_current ? " C" : "",
            thread->opengl.context->is_destroyed ? " D" : "",
            (int)thread->opengl.draw->name,
            thread->opengl.draw->serverbuffer,
            thread->opengl.draw->context_binding_count,
            thread->opengl.draw->is_destroyed ? " D" : "");
   }

   FUNC0(eglIntMakeCurrent_impl,
                         thread,
                         EGLINTMAKECURRENT_ID,
                         FUNC1((uint32_t)pid),
                         FUNC1((uint32_t)(pid >> 32)),
                         FUNC1(gltype),
                         FUNC1(servergl),
                         FUNC1(servergldraw),
                         FUNC1(serverglread),
                         FUNC1(servervg),
                         FUNC1(servervgsurf));
}