
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int track_num ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 scalar_t__ READ_U8 (int *,char*) ;
 int SKIP_BYTES (int *,int) ;
 int SKIP_STRING (int *,int,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_METADATA_KEY_ALBUM ;
 int VC_CONTAINER_METADATA_KEY_ARTIST ;
 int VC_CONTAINER_METADATA_KEY_GENRE ;
 int VC_CONTAINER_METADATA_KEY_TITLE ;
 int VC_CONTAINER_METADATA_KEY_TRACK ;
 int VC_CONTAINER_METADATA_KEY_YEAR ;
 int VC_CONTAINER_SUCCESS ;
 int countof (char**) ;
 int id3_add_metadata_entry (int *,int ,char*) ;
 char** id3_genres ;
 int id3_read_metadata_entry (int *,int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T id3_read_id3v1_tag( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint8_t track, genre;
   char track_num[4] = {0};

   SKIP_STRING(p_ctx, 3, "ID3v1 identifier");

   id3_read_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_TITLE, 30);

   id3_read_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_ARTIST, 30);

   id3_read_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_ALBUM, 30);

   id3_read_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_YEAR, 4);
   SKIP_STRING(p_ctx, 28, "ID3v1 comment");
   if (READ_U8(p_ctx, "ID3v1 zero-byte") == 0)
   {
      track = READ_U8(p_ctx, "ID3v1 track");
      snprintf(track_num, sizeof(track_num) - 1, "%02d", track);
      id3_add_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_TRACK, track_num);
   }
   else
   {
      SKIP_BYTES(p_ctx, 1);
   }
   genre = READ_U8(p_ctx, "ID3v1 genre");
   if (genre < countof(id3_genres))
   {
      id3_add_metadata_entry(p_ctx, VC_CONTAINER_METADATA_KEY_GENRE, id3_genres[genre]);
   }

   status = STREAM_STATUS(p_ctx);

   return status;
}
