#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int duration; } ;
typedef  TYPE_1__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 unsigned int MP4_64BITS_TIME ; 
 int MP4_TIMESCALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx )
{
   unsigned int version = MP4_64BITS_TIME;

   FUNC5(p_ctx,  version, "version");
   FUNC2(p_ctx, 0, "flags");

   // FIXME: take a better timescale ??
   if(version)
   {
      FUNC4(p_ctx, 0, "creation_time");
      FUNC4(p_ctx, 0, "modification_time");
      FUNC3(p_ctx, MP4_TIMESCALE, "timescale");
      FUNC4(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }
   else
   {
      FUNC3(p_ctx, 0, "creation_time");
      FUNC3(p_ctx, 0, "modification_time");
      FUNC3(p_ctx, MP4_TIMESCALE, "timescale");
      FUNC3(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }

   FUNC1(p_ctx, 0x55c4, "language"); /* ISO-639-2/T language code */
   FUNC1(p_ctx, 0, "pre_defined");

   return FUNC0(p_ctx);
}