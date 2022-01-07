
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef int VC_CONTAINER_BITS_T ;


 scalar_t__ BITS_AVAILABLE (int *,int *) ;
 scalar_t__ BITS_BYTES_AVAILABLE (int *,int *) ;
 scalar_t__ BITS_CURRENT_POINTER (int *,int *) ;
 int BITS_INIT (int *,int *,scalar_t__,scalar_t__) ;
 int BITS_REDUCE_BYTES (int *,int *,scalar_t__,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 scalar_t__ bits_0_to_10 ;
 scalar_t__ countof (scalar_t__) ;
 int plural_ext (scalar_t__) ;

__attribute__((used)) static int test_reduce_bytes(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;
   uint32_t last_bytes_left, bytes_left;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_reduce_bytes");
   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));

   last_bytes_left = BITS_BYTES_AVAILABLE(((void*)0), &bit_stream);
   if (last_bytes_left != countof(bits_0_to_10))
   {
      LOG_ERROR(((void*)0), "Expected bytes available to initially match given size");
      error_count++;
   }

   if (BITS_CURRENT_POINTER(((void*)0), &bit_stream) != bits_0_to_10)
   {
      LOG_ERROR(((void*)0), "Expected initial current pointer to match original buffer");
      error_count++;
   }

   for (ii = 0; ii < 4; ii++)
   {
      BITS_REDUCE_BYTES(((void*)0), &bit_stream, ii, "test_reduce_bytes");

      if (BITS_CURRENT_POINTER(((void*)0), &bit_stream) != bits_0_to_10)
      {
         LOG_ERROR(((void*)0), "Did not expect current pointer to have moved");
         error_count++;
      }

      bytes_left = BITS_BYTES_AVAILABLE(((void*)0), &bit_stream);
      if (bytes_left + ii != last_bytes_left)
      {
         int32_t actual = last_bytes_left - bytes_left;
         LOG_ERROR(((void*)0), "Tried to reduce by %u byte%s, actually reduced by %d byte%s",
               ii, plural_ext(ii), actual, plural_ext(actual));
         error_count++;
      }

      last_bytes_left = bytes_left;
   }

   if (!bytes_left)
   {
      LOG_ERROR(((void*)0), "Reached end of stream too soon");
      error_count++;
   }
   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Expected stream to be valid");
      error_count++;
   }

   BITS_REDUCE_BYTES(((void*)0), &bit_stream, bytes_left + 1, "Reducing an empty stream");
   if (BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded reducing by too many bytes");
      error_count++;
   }
   if (BITS_AVAILABLE(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Expected stream to have been reset");
      error_count++;
   }

   return error_count;
}
