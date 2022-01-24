#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
struct TYPE_16__ {TYPE_2__* format; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_T ;
struct TYPE_17__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {size_t current_track; scalar_t__ brand; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_T ;
struct TYPE_15__ {int /*<<< orphan*/  es_type; } ;
struct TYPE_14__ {TYPE_5__* module; } ;

/* Variables and functions */
 scalar_t__ MP4_BOX_TYPE_SOUN ; 
 scalar_t__ MP4_BOX_TYPE_TEXT ; 
 scalar_t__ MP4_BOX_TYPE_VIDE ; 
 scalar_t__ MP4_BRAND_QT ; 
 scalar_t__ FUNC0 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_AUDIO ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_SUBPICTURE ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_VIDEO ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   uint32_t i, fourcc, string_size;
   VC_CONTAINER_ES_TYPE_T es_type = VC_CONTAINER_ES_TYPE_UNKNOWN;

   if(size <= 24) return VC_CONTAINER_ERROR_CORRUPTED;

   FUNC5(p_ctx, "version");
   FUNC3(p_ctx, "flags");

   FUNC4(p_ctx, "pre-defined");

   fourcc = FUNC0(p_ctx, "handler_type");
   if(fourcc == MP4_BOX_TYPE_VIDE) es_type = VC_CONTAINER_ES_TYPE_VIDEO;
   if(fourcc == MP4_BOX_TYPE_SOUN) es_type = VC_CONTAINER_ES_TYPE_AUDIO;
   if(fourcc == MP4_BOX_TYPE_TEXT) es_type = VC_CONTAINER_ES_TYPE_SUBPICTURE;
   track->format->es_type = es_type;

   for(i = 0; i < 3; i++) FUNC4(p_ctx, "reserved");

   string_size = size;
   if(module->brand == MP4_BRAND_QT)
      string_size = FUNC1(p_ctx, "string_size");

   if(size < 0) return VC_CONTAINER_ERROR_CORRUPTED;
   if(string_size > size) string_size = size;

   FUNC2(p_ctx, string_size, "name");

   return FUNC6(p_ctx);
}