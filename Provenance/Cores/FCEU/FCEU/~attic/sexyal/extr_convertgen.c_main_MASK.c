#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int* bitsreal ; 
 char** check ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char** str ; 

FUNC5()
{
 int srcbits,destbits,srcchannels,destchannels;
 int srcbo,destbo;

 FUNC4("void SexiALI_Convert(SexyAL_format *srcformat, SexyAL_format *destformat, void *vdest, void *vsrc, uint32_t frames)");
 FUNC4("{");

 for(srcbits=0;srcbits<8;srcbits++)
 {
  FUNC3("if(srcformat->sampformat == %s)\n{\n",check[srcbits]);

  FUNC3("%s* src=vsrc;\n",str[srcbits]);

  for(destbits=0;destbits<8;destbits++)
  {
   FUNC3("if(destformat->sampformat == %s)\n{\n",check[destbits]);

   FUNC3("%s* dest=vdest;\n",str[destbits]);

   for(srcchannels=0;srcchannels<2;srcchannels++)
   {
    FUNC3("if(srcformat->channels == %c)\n{\n",'1'+srcchannels);
    for(destchannels=0;destchannels<2;destchannels++)
    {
     FUNC3("if(destformat->channels == %c)\n{\n",'1'+destchannels);
     for(srcbo=0;srcbo<2;srcbo++)
     {
      FUNC3("if(srcformat->byteorder == %d)\n{\n",srcbo);
      for(destbo=0;destbo<2;destbo++)
      {
       FUNC3("if(destformat->byteorder == %d)\n{\n",destbo);
       //printf("if(srcformat->sampformat==%s && destformat->sameck[srcbits],check[destbits]);
       FUNC3("while(frames--)\n{\n");

       FUNC4("int32_t tmp;");
       if(srcchannels)
	FUNC4("int32_t tmp2;");

       FUNC1(srcbits,"");

       if(srcbo) 
       {
        if(bitsreal[srcbits]==16)
         FUNC4("FLIP16(tmp);");
        else
         FUNC4("FLIP32(tmp);");
       }

       if(srcchannels) 
       {
        FUNC1(srcbits,"2");
        if(srcbo) 
        {
         if(bitsreal[srcbits]==16)
          FUNC4("FLIP16(tmp2);");
         else
          FUNC4("FLIP32(tmp2);");
        } 
       }

       FUNC0(srcbits,destbits,"");

       if(srcchannels) FUNC0(srcbits,destbits,"2");

       if(destbo)
       { 
        if(bitsreal[srcbits]==16)
         FUNC4("FLIP16(tmp);");
        else
         FUNC4("FLIP32(tmp);");
        if(srcchannels && destchannels && destbo)
        {
         if(bitsreal[srcbits]==16)
          FUNC4("FLIP16(tmp2);");   
         else
          FUNC4("FLIP32(tmp2);");
        }
       }

       if(srcchannels && !destchannels)
        FUNC3("tmp = (tmp+tmp2)>>1;\n");

       FUNC2(destbits,"");
       if(!srcchannels && destchannels)
        FUNC2(destbits,"");

       if(srcchannels && destchannels)
        FUNC2(destbits,"2");

       FUNC4("}");
       FUNC4("}");
      } // destbo
      FUNC4("}");
     } // srcbo
     FUNC4("}");
    }
    FUNC4("}");
   }
   FUNC4("}");
  }
  FUNC4("}");
 }

 FUNC4("}");
}