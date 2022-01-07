
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_READ_U32 (int *,int *,int,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int bits_0_to_10 ;
 int countof (int ) ;

__attribute__((used)) static int test_read_u32(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii, value;
   int error_count = 0;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_get_u32");
   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = BITS_READ_U32(((void*)0), &bit_stream, ii, "test_read_u32");
      if (value != ii)
      {
         LOG_ERROR(((void*)0), "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = BITS_READ_U32(((void*)0), &bit_stream, 1, "Final bit");
   if (!BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Failed to get final bit");
      error_count++;
   }
   value = BITS_READ_U32(((void*)0), &bit_stream, 1, "Beyond final bit");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }

   return error_count;
}
