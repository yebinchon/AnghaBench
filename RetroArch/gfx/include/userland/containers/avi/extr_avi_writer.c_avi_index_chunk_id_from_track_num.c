
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int track_num_buf ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;


 scalar_t__ VC_FOURCC (char,char,int ,int ) ;
 int memcpy (int *,char*,int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void avi_index_chunk_id_from_track_num(VC_CONTAINER_FOURCC_T *p_chunk_id,
   unsigned int track_num )
{
   VC_CONTAINER_FOURCC_T chunk_id = 0;
   char track_num_buf[3];

   chunk_id = VC_FOURCC('i','x','0','0');

   snprintf(track_num_buf, sizeof(track_num_buf), "%02d", track_num);
   memcpy(((uint8_t*)&chunk_id) + 2, track_num_buf, 2);

   *p_chunk_id = chunk_id;
}
