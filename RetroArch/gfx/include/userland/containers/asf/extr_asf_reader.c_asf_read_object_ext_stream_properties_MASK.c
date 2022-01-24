#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int ASF_OBJECT_HEADER_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC10( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_TRACK_T *p_track;
   unsigned int i, name_count, pes_count, length, stream_id;

   FUNC6(p_ctx, size, "Start Time");
   FUNC6(p_ctx, size, "End Time");
   FUNC5(p_ctx, size, "Data Bitrate");
   FUNC5(p_ctx, size, "Buffer Size");
   FUNC5(p_ctx, size, "Initial Buffer Fullness");
   FUNC5(p_ctx, size, "Alternate Data Bitrate");
   FUNC5(p_ctx, size, "Alternate Buffer Size");
   FUNC5(p_ctx, size, "Alternate Initial Buffer Fullness");
   FUNC5(p_ctx, size, "Maximum Object Size");
   FUNC5(p_ctx, size, "Flags");
   stream_id = FUNC0(p_ctx, size, "Stream Number");
   FUNC4(p_ctx, size, "Stream Language ID Index");
   FUNC6(p_ctx, size, "Average Time Per Frame");
   name_count = FUNC0(p_ctx, size, "Stream Name Count");
   pes_count = FUNC0(p_ctx, size, "Payload Extension System Count");

   FUNC7(p_ctx, size);

   p_track = FUNC9( p_ctx, stream_id, true);
   if(!p_track) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   /* Stream Names */
   for(i = 0; i < name_count; i++)
   {
      if(size < 4) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC4(p_ctx, size, "Language ID Index");
      length = FUNC0(p_ctx, size, "Stream Name Length");
      if(size < length) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC2(p_ctx, size, length); /* Stream Name */
   }

   FUNC7(p_ctx, size);

   /* Payload Extension Systems */
   for(i = 0; i < pes_count; i++)
   {
      if(size < 22) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC3(p_ctx, size, "Extension System ID");
      FUNC4(p_ctx, size, "Extension Data Size");
      length = FUNC1(p_ctx, size, "Extension System Info Length");
      if(size < length) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC2(p_ctx, size, length); /* Extension System Info */
   }

   FUNC7(p_ctx, size);

   /* Optional Stream Properties Object */
   if(size >= ASF_OBJECT_HEADER_SIZE)
      status = FUNC8(p_ctx, size);

   return status;
}