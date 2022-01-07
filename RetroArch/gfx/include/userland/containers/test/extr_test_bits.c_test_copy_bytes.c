
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int buffer ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_COPY_BYTES (int *,int *,int,int *,char*) ;
 int BITS_INIT (int *,int *,int *,int) ;
 int BITS_REDUCE_BYTES (int *,int *,int,char*) ;
 int BITS_SKIP_BYTES (int *,int *,int,char*) ;
 int BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*) ;
 int * bits_0_to_10 ;
 int countof (int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int test_copy_bytes(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   int error_count = 0;
   uint8_t buffer[countof(bits_0_to_10)];
   uint32_t ii;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_copy_bytes");
   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));
   memset(buffer, 0, sizeof(buffer));


   BITS_COPY_BYTES(((void*)0), &bit_stream, countof(buffer), buffer, "Copy whole buffer");

   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Failed to copy the whole buffer");
      error_count++;
   }

   if (memcmp(buffer, bits_0_to_10, countof(bits_0_to_10)) != 0)
   {
      LOG_ERROR(((void*)0), "Single copy doesn't match original");
      error_count++;
   }

   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));
   memset(buffer, 0, sizeof(buffer));


   for (ii = 0; ii < countof(bits_0_to_10); ii++)
   {
      BITS_COPY_BYTES(((void*)0), &bit_stream, 1, buffer + ii, "Copy buffer piecemeal");
   }

   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Failed to copy the buffer piecemeal");
      error_count++;
   }

   if (memcmp(buffer, bits_0_to_10, countof(bits_0_to_10)) != 0)
   {
      LOG_ERROR(((void*)0), "Multiple copy doesn't match original");
      error_count++;
   }

   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));
   memset(buffer, 0, sizeof(buffer));


   BITS_SKIP_BYTES(((void*)0), &bit_stream, 1, "Copy part of buffer");
   BITS_REDUCE_BYTES(((void*)0), &bit_stream, 1, "Copy part of buffer");
   BITS_COPY_BYTES(((void*)0), &bit_stream, countof(buffer) - 2, buffer, "Copy part of buffer");

   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Failed to copy part of buffer");
      error_count++;
   }

   if (memcmp(buffer, bits_0_to_10 + 1, countof(bits_0_to_10) - 2) != 0)
   {
      LOG_ERROR(((void*)0), "Partial copy doesn't match original");
      error_count++;
   }

   return error_count;
}
