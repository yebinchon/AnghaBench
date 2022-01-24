#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int time_setup; int time_enable; int time_disable; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {unsigned int connection_num; double decoded_frames; double time_playback; unsigned int component_num; TYPE_1__* component; int /*<<< orphan*/  event; TYPE_4__** connection; int /*<<< orphan*/  uri; } ;
struct TYPE_8__ {int time_cleanup; int time_setup; int /*<<< orphan*/  name; int /*<<< orphan*/  comp; } ;
typedef  TYPE_2__ MMALPLAY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(MMALPLAY_T *ctx)
{
   unsigned int i;

   FUNC1("%p, %s", ctx, ctx->uri);

   /* Disable connections */
   for (i = ctx->connection_num; i; i--)
      FUNC5(ctx->connection[i-1]);

   FUNC0("--- statistics ---");
   FUNC0("decoded %i frames in %.2fs (%.2ffps)", (int)ctx->decoded_frames,
            ctx->time_playback / 1000000.0, ctx->decoded_frames * 1000000.0 / ctx->time_playback);

   for (i = 0; i < ctx->connection_num; i++)
   {
      FUNC0("%s", ctx->connection[i]->name);
      FUNC0("- setup time: %ims",
               (int)(ctx->connection[i]->time_setup / 1000));
      FUNC0("- enable time: %ims, disable time: %ims",
               (int)(ctx->connection[i]->time_enable / 1000),
               (int)(ctx->connection[i]->time_disable / 1000));
   }

   /* Destroy connections */
   for (i = ctx->connection_num; i; i--)
      FUNC4(ctx->connection[i-1]);

   /* Destroy components */
   for (i = ctx->component_num; i; i--)
   {
      ctx->component[i-1].time_cleanup = FUNC6();
      FUNC3(ctx->component[i-1].comp);
      ctx->component[i-1].time_cleanup = FUNC6() - ctx->component[i-1].time_cleanup;
   }

   FUNC7(&ctx->event);

   for (i = 0; i < ctx->component_num; i++)
   {
      FUNC0("%s:", ctx->component[i].name);
      FUNC0("- setup time: %ims, cleanup time: %ims",
               (int)(ctx->component[i].time_setup / 1000),
               (int)(ctx->component[i].time_cleanup / 1000));
   }
   FUNC0("-----------------");

   FUNC2(ctx);
}