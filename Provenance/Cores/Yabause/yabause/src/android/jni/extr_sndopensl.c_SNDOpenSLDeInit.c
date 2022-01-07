
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int MAX_BUFFER_CNT ;
 int free (int *) ;
 int ** stereodata16 ;

__attribute__((used)) static void SNDOpenSLDeInit(void)
{
   int i;
   JNIEnv * env;

   for( i=0; i< MAX_BUFFER_CNT; i++ )
   {
      free(stereodata16[i]);
      stereodata16[i] = ((void*)0);
   }

}
