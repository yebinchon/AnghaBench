#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_13__ {TYPE_5__* format; TYPE_4__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {scalar_t__ codec; char* extradata; int /*<<< orphan*/  extradata_size; TYPE_2__* type; } ;
struct TYPE_11__ {TYPE_3__* module; } ;
struct TYPE_10__ {char* extradata; } ;
struct TYPE_8__ {void* height; void* width; } ;
struct TYPE_9__ {TYPE_1__ video; } ;

/* Variables and functions */
 int ASF_EXTRADATA_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC10( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_TRACK_T *p_track, int64_t size )
{
   uint32_t bmih_size, formatdata_size;
   uint32_t fourcc;

   /* Sanity check the size of the data */
   if(size < 40 + 11) return VC_CONTAINER_ERROR_CORRUPTED;

   /* Read the preamble to the BITMAPINFOHEADER */
   FUNC4(p_ctx, size, "Encoded Image Width");
   FUNC4(p_ctx, size, "Encoded Image Height");
   FUNC5(p_ctx, size, "Reserved Flags");
   formatdata_size = FUNC1(p_ctx, size, "Format Data Size");

   /* Sanity check the size of the data */
   if(formatdata_size < 40 || size < formatdata_size) return VC_CONTAINER_ERROR_CORRUPTED;
   bmih_size = FUNC2(p_ctx, size, "Format Data Size");
   if(bmih_size < 40 || bmih_size > formatdata_size) return VC_CONTAINER_ERROR_CORRUPTED;

   /* Read BITMAPINFOHEADER structure */
   p_track->format->type->video.width = FUNC2(p_ctx, size, "Image Width");
   p_track->format->type->video.height = FUNC2(p_ctx, size, "Image Height"); /* Signed */
   FUNC3(p_ctx, size, "Reserved");
   FUNC3(p_ctx, size, "Bits Per Pixel Count");
   FUNC0(p_ctx, size, (char *)&fourcc, 4); /* Compression ID */
   FUNC7(p_ctx, "Compression ID: %4.4s", (char *)&fourcc);
   p_track->format->codec = FUNC9(fourcc);
   if(p_track->format->codec == VC_CONTAINER_CODEC_UNKNOWN)
      p_track->format->codec = fourcc;
   FUNC4(p_ctx, size, "Image Size");
   FUNC4(p_ctx, size, "Horizontal Pixels Per Meter");
   FUNC4(p_ctx, size, "Vertical Pixels Per Meter");
   FUNC4(p_ctx, size, "Colors Used Count");
   FUNC4(p_ctx, size, "Important Colors Count");

   if(!(bmih_size -= 40))return VC_CONTAINER_SUCCESS;

   if(bmih_size > ASF_EXTRADATA_MAX)
   {
      FUNC6(p_ctx, "extradata truncated");
      bmih_size = ASF_EXTRADATA_MAX;
   }
   p_track->format->extradata = p_track->priv->module->extradata;
   p_track->format->extradata_size = FUNC0(p_ctx, size, p_track->format->extradata, bmih_size);

   return FUNC8(p_ctx);
}