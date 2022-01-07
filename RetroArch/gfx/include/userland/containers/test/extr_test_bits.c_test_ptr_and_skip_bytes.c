
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef int VC_CONTAINER_BITS_T ;


 scalar_t__ BITS_BYTES_AVAILABLE (int *,int *) ;
 int const* BITS_CURRENT_POINTER (int *,int *) ;
 int BITS_INIT (int *,int *,int const*,scalar_t__) ;
 int BITS_SKIP_BYTES (int *,int *,scalar_t__,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int const* bits_0_to_10 ;
 scalar_t__ countof (int const*) ;
 int plural_ext (scalar_t__) ;

__attribute__((used)) static int test_ptr_and_skip_bytes(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   const uint8_t *expected_ptr;
   int error_count = 0;
   uint32_t last_bytes_left, bytes_left;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_current_pointer, vc_container_bits_skip_bytes and vc_container_bits_bytes_available");
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

   expected_ptr = bits_0_to_10;
   for (ii = 0; ii < 4; ii++)
   {
      BITS_SKIP_BYTES(((void*)0), &bit_stream, ii, "test_ptr_and_skip_bytes");

      expected_ptr += ii;
      if (BITS_CURRENT_POINTER(((void*)0), &bit_stream) != expected_ptr)
      {
         LOG_ERROR(((void*)0), "Expected current pointer to have moved by %u byte%s", ii, plural_ext(ii));
         error_count++;
      }

      bytes_left = BITS_BYTES_AVAILABLE(((void*)0), &bit_stream);
      if (bytes_left + ii != last_bytes_left)
      {
         int32_t actual = last_bytes_left - bytes_left;
         LOG_ERROR(((void*)0), "Tried to skip %u byte%s, actually skipped %d byte%s",
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

   BITS_SKIP_BYTES(((void*)0), &bit_stream, bytes_left + 1, "Beyond end of stream");
   if (BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded skipping bytes beyond end of stream");
      error_count++;
   }
   if (BITS_BYTES_AVAILABLE(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Expected stream to have been reset");
      error_count++;
   }

   return error_count;
}
