
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int VC_CONTAINER_STATUS_T ;


 int BI16 (char*) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T qsynth_read_header(uint8_t *data, uint32_t *tracks,
   uint32_t *division, uint8_t *fps, uint8_t *dpf)
{
   if(data[0] != 'M' || data[1] != 'T' || data[2] != 'h' || data[3] != 'd' ||
      data[4] != 0 || data[5] != 0 || data[6] != 0 || data[7] != 6)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if(data[12] < 0x80)
   {
      if(division) *division = BI16(data+12);
   }
   else
   {
      if(fps) *fps = 256-data[12];
      if(dpf) *dpf = data[13];
   }

   if(tracks) *tracks = BI16(data+10);

   return VC_CONTAINER_SUCCESS;
}
