#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  socket; } ;
struct TYPE_5__ {int rate; int channels; int format; TYPE_1__ conn; } ;
typedef  TYPE_2__ rsound_t ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int CHANNEL ; 
 int FORMAT ; 
 int FRAMESIZE ; 
 scalar_t__ HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RATE ; 
#define  RSD_ALAW 135 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  RSD_MULAW 134 
 int RSD_S16_BE ; 
#define  RSD_S16_LE 133 
#define  RSD_S16_NE 132 
 int RSD_S32_BE ; 
 int RSD_S32_LE ; 
#define  RSD_S32_NE 131 
 int RSD_U16_BE ; 
 int RSD_U16_LE ; 
#define  RSD_U16_NE 130 
 int RSD_U32_BE ; 
 int RSD_U32_LE ; 
#define  RSD_U32_NE 129 
#define  RSD_U8 128 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 char* FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(rsound_t *rd)
{

   /* Defines the size of a wave header */
#define HEADER_SIZE 44
   char *header = FUNC5(1, HEADER_SIZE);
   if (header == NULL)
   {
      FUNC2("[RSound] Could not allocate memory.");
      return -1;
   }
   uint16_t temp16;
   uint32_t temp32;

   /* These magic numbers represent the position of the elements in the wave header.
      We can't simply send a wave struct over the network since the compiler is allowed to
      pad our structs as they like, so sizeof(waveheader) might not be similar on two different
      systems. */

#define RATE 24
#define CHANNEL 22
#define FRAMESIZE 34
#define FORMAT 42

   uint32_t temp_rate = rd->rate;
   uint16_t temp_channels = rd->channels;

   uint16_t temp_bits = 8 * FUNC7(rd->format);
   uint16_t temp_format = rd->format;

   // Checks the format for native endian which will need to be set properly.
   switch ( temp_format )
   {
      case RSD_S16_NE:
         if ( FUNC8() )
            temp_format = RSD_S16_LE;
         else
            temp_format = RSD_S16_BE;
         break;

      case RSD_U16_NE:
         if ( FUNC8() )
            temp_format = RSD_U16_LE;
         else
            temp_format = RSD_U16_BE;
         break;
      case RSD_S32_NE:
         if ( FUNC8() )
            temp_format = RSD_S32_LE;
         else
            temp_format = RSD_S32_BE;
         break;
      case RSD_U32_NE:
         if ( FUNC8() )
            temp_format = RSD_U32_LE;
         else
            temp_format = RSD_U32_BE;
         break;

      default:
         break;
   }

   /* Since the values in the wave header we are interested in, are little endian (>_<), we need
      to determine whether we're running it or not, so we can byte swap accordingly.
      Could determine this compile time, but it was simpler to do it this way. */

   // Fancy macros for embedding little endian values into the header.
#define SET32(buf,offset,x) (*((uint32_t*)(buf+offset)) = x)
#define SET16(buf,offset,x) (*((uint16_t*)(buf+offset)) = x)

#define LSB16(x) if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_16(&(x)); }
#define LSB32(x) if ( !rsnd_is_little_endian() ) { rsnd_swap_endian_32(&(x)); }

   /* Here we embed in the rest of the WAV header for it to be somewhat valid */

   FUNC10(header, "RIFF", sizeof(header));
   SET32(header, 4, 0);
   FUNC10(header+8, "WAVE", sizeof(header));
   FUNC10(header+12, "fmt ", sizeof(header));

   temp32 = 16;
   LSB32(temp32);
   SET32(header, 16, temp32);

   temp16 = 0; // PCM data

   switch( rd->format )
   {
      case RSD_S16_LE:
      case RSD_U8:
         temp16 = 1;
         break;

      case RSD_ALAW:
         temp16 = 6;
         break;

      case RSD_MULAW:
         temp16 = 7;
         break;
   }

   LSB16(temp16);
   SET16(header, 20, temp16);

   // Channels here
   LSB16(temp_channels);
   SET16(header, CHANNEL, temp_channels);
   // Samples per sec
   LSB32(temp_rate);
   SET32(header, RATE, temp_rate);

   temp32 = rd->rate * rd->channels * FUNC7(rd->format);
   LSB32(temp32);
   SET32(header, 28, temp32);

   temp16 = rd->channels * FUNC7(rd->format);
   LSB16(temp16);
   SET16(header, 32, temp16);

   // Bits per sample
   LSB16(temp_bits);
   SET16(header, FRAMESIZE, temp_bits);

   FUNC10(header+36, "data", sizeof(header));

   /* Do not care about cksize here (impossible to know beforehand).
    * It is used by the server for format. */

   LSB16(temp_format);
   SET16(header, FORMAT, temp_format);

   /* End static header */

   if ( FUNC9(rd->conn.socket, header, HEADER_SIZE, 1) != HEADER_SIZE )
   {
      FUNC6(header);
      return -1;
   }

   FUNC6(header);
   return 0;
}