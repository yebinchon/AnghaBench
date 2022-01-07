
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_BITS_T ;


 scalar_t__ BITS_AVAILABLE (int *,int *) ;
 int BITS_INIT (int *,int *,int ,int ) ;
 int BITS_RESET (int *,int *) ;
 int LOG_DEBUG (int *,char*) ;
 int LOG_ERROR (int *,char*) ;
 int bits_0_to_10 ;
 int countof (int ) ;

__attribute__((used)) static int test_reset_and_available(void)
{
   VC_CONTAINER_BITS_T bit_stream;
   int error_count = 0;

   LOG_DEBUG(((void*)0), "Testing vc_container_bits_reset and vc_container_bits_available");
   BITS_INIT(((void*)0), &bit_stream, bits_0_to_10, countof(bits_0_to_10));

   if (!BITS_AVAILABLE(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Expected initialised stream to contain bits");
      error_count++;
   }

   BITS_RESET(((void*)0), &bit_stream);

   if (BITS_AVAILABLE(((void*)0), &bit_stream))
   {
      LOG_ERROR(((void*)0), "Expected reset stream not to contain bits");
      error_count++;
   }

   return error_count;
}
