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
typedef  int /*<<< orphan*/  track_num ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_ALBUM ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_ARTIST ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_GENRE ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_TITLE ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_TRACK ; 
 int /*<<< orphan*/  VC_CONTAINER_METADATA_KEY_YEAR ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char** id3_genres ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint8_t track, genre;
   char track_num[4] = {0};

   FUNC2(p_ctx, 3, "ID3v1 identifier");
   /* ID3v1 title */
   FUNC6(p_ctx, VC_CONTAINER_METADATA_KEY_TITLE, 30);
   /* ID3v1 artist */
   FUNC6(p_ctx, VC_CONTAINER_METADATA_KEY_ARTIST, 30);
   /* ID3v1 album */
   FUNC6(p_ctx, VC_CONTAINER_METADATA_KEY_ALBUM, 30);
   /* ID3v1 year */
   FUNC6(p_ctx, VC_CONTAINER_METADATA_KEY_YEAR, 4);
   FUNC2(p_ctx, 28, "ID3v1 comment");
   if (FUNC0(p_ctx, "ID3v1 zero-byte") == 0)
   {
      track = FUNC0(p_ctx, "ID3v1 track");
      FUNC7(track_num, sizeof(track_num) - 1, "%02d", track);
      FUNC5(p_ctx, VC_CONTAINER_METADATA_KEY_TRACK, track_num);
   }
   else
   {
      FUNC1(p_ctx, 1);
   }
   genre = FUNC0(p_ctx, "ID3v1 genre");
   if (genre < FUNC4(id3_genres))
   {
      FUNC5(p_ctx, VC_CONTAINER_METADATA_KEY_GENRE, id3_genres[genre]);
   }

   status = FUNC3(p_ctx);

   return status;
}