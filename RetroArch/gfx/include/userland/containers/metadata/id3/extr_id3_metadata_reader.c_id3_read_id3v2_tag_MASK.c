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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC12( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint8_t maj_version, flags;
   uint32_t tag_size, size = 0;
   uint8_t peek_buf[10];

   FUNC8(p_ctx, 3, "ID3v2 identifier");
   maj_version = FUNC6(p_ctx, "ID3v2 version (major)");
   FUNC9(p_ctx, "ID3v2 version (minor)");
   flags = FUNC6(p_ctx, "ID3v2 flags");
   tag_size = FUNC5(p_ctx, "ID3v2 syncsafe tag size");
   tag_size = FUNC0(tag_size);
   FUNC1(p_ctx, "ID3v2 tag size: %d", tag_size);

   /* Check that we support this major version */
   if (!(maj_version == 4 || maj_version == 3 || maj_version == 2))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* We can't currently handle unsynchronisation */
   if ((flags >> 7) & 1)
   {
      FUNC1(p_ctx, "skipping unsynchronised tag, not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }

   /* FIXME: check for version 2.2 and extract iTunes gapless playback information */
   if (maj_version == 2) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if ((flags >> 6) & 1)
   {
      /* Skip extended header, we don't support it */
      uint32_t ext_hdr_size;
      FUNC1(p_ctx, "skipping ID3v2 extended header, not supported");
      ext_hdr_size = FUNC5(p_ctx, "ID3v2 syncsafe extended header size");
      ext_hdr_size = FUNC0(ext_hdr_size);
      FUNC1(p_ctx, "ID3v2 extended header size: %d", ext_hdr_size);
      FUNC7(p_ctx, FUNC2(tag_size, ext_hdr_size));
      size += ext_hdr_size;
   }

   while (FUNC3(p_ctx, peek_buf, 10) == 10 && size < tag_size)
   {
      VC_CONTAINER_FOURCC_T frame_id;
      uint32_t frame_size;
      uint8_t format_flags;

      frame_id = FUNC4(p_ctx, "Frame ID");
      frame_size = FUNC5(p_ctx, "Frame Size");

      if (maj_version >= 4)
      {
         frame_size = FUNC0(frame_size);
         FUNC1(p_ctx, "ID3v2 actual frame size: %d", frame_size);
      }

      FUNC9(p_ctx, "ID3v2 status message flags");
      format_flags = FUNC6(p_ctx, "ID3v2 format description flags");

      size += 10;

      if((status = FUNC10(p_ctx)) != VC_CONTAINER_SUCCESS || !frame_id)
         break;

      /* Early exit if we detect an invalid tag size */
      if (size + frame_size > tag_size)
      {
         status = VC_CONTAINER_ERROR_FORMAT_INVALID;
         break;
      }

      /* We can't currently handle unsynchronised frames */
      if ((format_flags >> 1) & 1)
      {
         FUNC1(p_ctx, "skipping unsynchronised frame, not supported");
         FUNC7(p_ctx, frame_size);
         continue;
      }

      if ((status = FUNC11(p_ctx, frame_id, frame_size)) != VC_CONTAINER_SUCCESS)
      {
         FUNC1(p_ctx, "skipping unsupported frame");
         FUNC7(p_ctx, frame_size);
      }

      size += frame_size;
   }

   /* Try to skip to end of tag in case we bailed out early */
   if (size < tag_size) FUNC7(p_ctx, tag_size - size);

   return status;
}