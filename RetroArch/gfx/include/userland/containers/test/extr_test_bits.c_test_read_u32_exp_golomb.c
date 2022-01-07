
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_READ_U32 (int *,int *,int,char*) ;
 int BITS_READ_U32_EXP (int *,int *,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int countof (int ) ;
 int exp_golomb_0_to_10 ;
 int exp_golomb_large ;
 int exp_golomb_oversize ;

__attribute__((used)) static int test_read_u32_exp_golomb(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii, value;
   int error_count = 0;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_get_u32_exp_golomb");
   BITS_INIT(((void*)0), &bit_stream, exp_golomb_0_to_10, countof(exp_golomb_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = BITS_READ_U32_EXP(((void*)0), &bit_stream, "test_read_u32_exp_golomb");
      if (value != ii)
      {
         LOG_ERROR(((void*)0), "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = BITS_READ_U32(((void*)0), &bit_stream, 1, "Final bit");
   if (!BITS_VALID(((void*)0), &bit_stream) || !value)
   {
      LOG_ERROR(((void*)0), "Failed to get final bit (expected a 1)");
      error_count++;
   }
   value = BITS_READ_U32_EXP(((void*)0), &bit_stream, "Beyond end of stream");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }


   BITS_INIT(((void*)0), &bit_stream, exp_golomb_large, countof(exp_golomb_large));

   value = BITS_READ_U32_EXP(((void*)0), &bit_stream, "Second largest 32-bit value");
   if (value != 0xFFFFFFFE)
   {
      LOG_ERROR(((void*)0), "Failed to get second largest 32-bit value");
      error_count++;
   }

   value = BITS_READ_U32_EXP(((void*)0), &bit_stream, "Largest 32-bit value");
   if (value != 0xFFFFFFFF)
   {
      LOG_ERROR(((void*)0), "Failed to get largest 32-bit value");
      error_count++;
   }


   BITS_INIT(((void*)0), &bit_stream, exp_golomb_oversize, countof(exp_golomb_oversize));

   value = BITS_READ_U32_EXP(((void*)0), &bit_stream, "Unsigned 33-bit value");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly got 33-bit value: %u", value);
      error_count++;
   }

   return error_count;
}
