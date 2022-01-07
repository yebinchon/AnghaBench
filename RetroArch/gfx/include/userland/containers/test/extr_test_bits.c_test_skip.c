
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_AVAILABLE (int *,int *) ;
 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_SKIP (int *,int *,int,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int bits_0_to_10 ;
 int countof (int ) ;
 int plural_ext (int) ;

__attribute__((used)) static int test_skip(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;
   uint32_t last_bits_left, bits_left;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_skip");
   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));

   last_bits_left = BITS_AVAILABLE(((void*)0), &bit_stream);
   for (ii = 0; ii < 11; ii++)
   {
      BITS_SKIP(((void*)0), &bit_stream, ii, "test_skip");
      bits_left = BITS_AVAILABLE(((void*)0), &bit_stream);
      if (bits_left + ii != last_bits_left)
      {
         int32_t actual = last_bits_left - bits_left;
         LOG_ERROR(((void*)0), "Tried to skip %u bit%s, actually skipped %d bit%s",
               ii, plural_ext(ii), actual, plural_ext(actual));
         error_count++;
      }
      last_bits_left = bits_left;
   }

   BITS_SKIP(((void*)0), &bit_stream, 1, "Final bit");
   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Failed to skip final bit");
      error_count++;
   }
   if (BITS_AVAILABLE(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "End of stream not reached by skipping");
      error_count++;
   }

   BITS_SKIP(((void*)0), &bit_stream, 1, "Beyond final bit");
   if (BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded skipping beyond expected end of stream");
      error_count++;
   }
   return error_count;
}
