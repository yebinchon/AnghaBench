
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_BITS_T ;


 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_SKIP_EXP (int *,int *,char*) ;
 scalar_t__ BITS_VALID (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*) ;
 int countof (int ) ;
 int exp_golomb_0_to_10 ;

__attribute__((used)) static int test_skip_exp_golomb(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   uint32_t ii;
   int error_count = 0;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_skip_exp_golomb");
   BITS_INIT(((void*)0), &bit_stream, exp_golomb_0_to_10, countof(exp_golomb_0_to_10));

   for (ii = 0; ii < 12; ii++)
   {
      BITS_SKIP_EXP(((void*)0), &bit_stream, "test_skip_exp_golomb");
   }

   if (!BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Failed to skip through buffer");
      error_count++;
   }

   BITS_SKIP_EXP(((void*)0), &bit_stream, "Skip beyond end of stream");
   if (BITS_VALID(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Unexpectedly succeeded skipping beyond expected end of stream");
      error_count++;
   }

   return error_count;
}
