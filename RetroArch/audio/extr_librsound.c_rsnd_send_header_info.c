
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int socket; } ;
struct TYPE_5__ {int rate; int channels; int format; TYPE_1__ conn; } ;
typedef TYPE_2__ rsound_t ;
typedef int header ;


 int CHANNEL ;
 int FORMAT ;
 int FRAMESIZE ;
 scalar_t__ HEADER_SIZE ;
 int LSB16 (int) ;
 int LSB32 (int) ;
 int RATE ;

 int RSD_ERR (char*) ;

 int RSD_S16_BE ;


 int RSD_S32_BE ;
 int RSD_S32_LE ;

 int RSD_U16_BE ;
 int RSD_U16_LE ;

 int RSD_U32_BE ;
 int RSD_U32_LE ;


 int SET16 (char*,int,int) ;
 int SET32 (char*,int,int) ;
 char* calloc (int,scalar_t__) ;
 int free (char*) ;
 int rsnd_format_to_samplesize (int) ;
 int rsnd_is_little_endian () ;
 scalar_t__ rsnd_send_chunk (int ,char*,scalar_t__,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int rsnd_send_header_info(rsound_t *rd)
{



   char *header = calloc(1, 44);
   if (header == ((void*)0))
   {
      RSD_ERR("[RSound] Could not allocate memory.");
      return -1;
   }
   uint16_t temp16;
   uint32_t temp32;
   uint32_t temp_rate = rd->rate;
   uint16_t temp_channels = rd->channels;

   uint16_t temp_bits = 8 * rsnd_format_to_samplesize(rd->format);
   uint16_t temp_format = rd->format;


   switch ( temp_format )
   {
      case 132:
         if ( rsnd_is_little_endian() )
            temp_format = 133;
         else
            temp_format = RSD_S16_BE;
         break;

      case 130:
         if ( rsnd_is_little_endian() )
            temp_format = RSD_U16_LE;
         else
            temp_format = RSD_U16_BE;
         break;
      case 131:
         if ( rsnd_is_little_endian() )
            temp_format = RSD_S32_LE;
         else
            temp_format = RSD_S32_BE;
         break;
      case 129:
         if ( rsnd_is_little_endian() )
            temp_format = RSD_U32_LE;
         else
            temp_format = RSD_U32_BE;
         break;

      default:
         break;
   }
   strlcpy(header, "RIFF", sizeof(header));
   (*((uint32_t*)(header+4)) = 0);
   strlcpy(header+8, "WAVE", sizeof(header));
   strlcpy(header+12, "fmt ", sizeof(header));

   temp32 = 16;
   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_32(&(temp32)); };
   (*((uint32_t*)(header+16)) = temp32);

   temp16 = 0;

   switch( rd->format )
   {
      case 133:
      case 128:
         temp16 = 1;
         break;

      case 135:
         temp16 = 6;
         break;

      case 134:
         temp16 = 7;
         break;
   }

   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(temp16)); };
   (*((uint16_t*)(header+20)) = temp16);


   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(temp_channels)); };
   (*((uint16_t*)(header+22)) = temp_channels);

   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_32(&(temp_rate)); };
   (*((uint32_t*)(header+24)) = temp_rate);

   temp32 = rd->rate * rd->channels * rsnd_format_to_samplesize(rd->format);
   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_32(&(temp32)); };
   (*((uint32_t*)(header+28)) = temp32);

   temp16 = rd->channels * rsnd_format_to_samplesize(rd->format);
   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(temp16)); };
   (*((uint16_t*)(header+32)) = temp16);


   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(temp_bits)); };
   (*((uint16_t*)(header+34)) = temp_bits);

   strlcpy(header+36, "data", sizeof(header));




   if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(temp_format)); };
   (*((uint16_t*)(header+42)) = temp_format);



   if ( rsnd_send_chunk(rd->conn.socket, header, 44, 1) != 44 )
   {
      free(header);
      return -1;
   }

   free(header);
   return 0;
}
