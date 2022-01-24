#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {TYPE_3__* format; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {int extradata_size; char* extradata; int /*<<< orphan*/  codec; TYPE_2__* type; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *p_track )
{
   uint32_t fourcc;

   /* Write the preamble to the BITMAPINFOHEADER */
   FUNC3(p_ctx, p_track->format->type->video.width, "Encoded Image Width");
   FUNC3(p_ctx, p_track->format->type->video.height, "Encoded Image Height");
   FUNC4(p_ctx, 0, "Reserved Flags");
   FUNC2(p_ctx, 40 + p_track->format->extradata_size, "Format Data Size");

   /* Write BITMAPINFOHEADER structure */
   FUNC3(p_ctx, 40 + p_track->format->extradata_size, "Format Data Size");
   FUNC3(p_ctx, p_track->format->type->video.width, "Image Width");
   FUNC3(p_ctx, p_track->format->type->video.height, "Image Height");
   FUNC2(p_ctx, 0, "Reserved");
   FUNC2(p_ctx, 0, "Bits Per Pixel Count");
   fourcc = FUNC5(p_track->format->codec);
   FUNC1(p_ctx, (char *)&fourcc, 4); /* Compression ID */
   FUNC0(p_ctx, "Compression ID: %4.4s", (char *)&fourcc);
   FUNC3(p_ctx, 0, "Image Size");
   FUNC3(p_ctx, 0, "Horizontal Pixels Per Meter");
   FUNC3(p_ctx, 0, "Vertical Pixels Per Meter");
   FUNC3(p_ctx, 0, "Colors Used Count");
   FUNC3(p_ctx, 0, "Important Colors Count");

   FUNC1(p_ctx, p_track->format->extradata, p_track->format->extradata_size);

   return VC_CONTAINER_SUCCESS;
}