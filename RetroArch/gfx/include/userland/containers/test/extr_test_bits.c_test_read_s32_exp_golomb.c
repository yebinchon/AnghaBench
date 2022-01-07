
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_READ_S32_EXP (int *,int *,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int countof (int ) ;
 int exp_golomb_0_to_10 ;
 int exp_golomb_large ;
 int exp_golomb_oversize ;
 int* exp_golomb_values ;

__attribute__((used)) static int test_read_s32_exp_golomb(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int32_t value;
   int error_count = 0;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_get_s32_exp_golomb");
   BITS_INIT(((void*)0), &bit_stream, exp_golomb_0_to_10, countof(exp_golomb_0_to_10));

   for (ii = 0; ii < 11; ii++)
   {
      value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "test_read_s32_exp_golomb");
      if (value != exp_golomb_values[ii])
      {
         LOG_ERROR(((void*)0), "Expected %u, got %u", ii, value);
         error_count++;
      }
   }

   value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "Final bit");
   if (!BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Failed to get final Exp-Golomb value (expected a zero)");
      error_count++;
   }
   value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "Beyond final bit");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded reading beyond expected end of stream");
      error_count++;
   }


   BITS_INIT(((void*)0), &bit_stream, exp_golomb_large, countof(exp_golomb_large));

   value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "Largest signed 32-bit value");
   if (!BITS_VALID(((void*)0), &bit_stream) || value != -0x7FFFFFFF)
   {
      LOG_ERROR(((void*)0), "Failed to get largest signed 32-bit value: %d", value);
      error_count++;
   }

   value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "Just too large signed 33-bit value");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly got slightly too large signed 32-bit value: %d", value);
      error_count++;
   }


   BITS_INIT(((void*)0), &bit_stream, exp_golomb_oversize, countof(exp_golomb_oversize));

   value = BITS_READ_S32_EXP(((void*)0), &bit_stream, "Larger signed 33-bit value");
   if (BITS_VALID(((void*)0), &bit_stream) || value)
   {
      LOG_ERROR(((void*)0), "Unexpectedly got signed 33-bit value: %d", value);
      error_count++;
   }

   return error_count;
}
