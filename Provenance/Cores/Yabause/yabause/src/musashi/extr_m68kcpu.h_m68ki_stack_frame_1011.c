
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int m68ki_push_16 (int) ;
 int m68ki_push_32 (int) ;

void m68ki_stack_frame_1011(uint sr, uint vector, uint pc)
{

 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);
 m68ki_push_32(0);


 m68ki_push_16(0);


 m68ki_push_32(0);
 m68ki_push_16(0);


 m68ki_push_32(0);


 m68ki_push_32(0);


 m68ki_push_32(0);


 m68ki_push_32(0);
 m68ki_push_32(0);


 m68ki_push_32(0);


 m68ki_push_16(0);


 m68ki_push_16(0);


 m68ki_push_32(0);


 m68ki_push_16(0);


 m68ki_push_16(0);


 m68ki_push_16(0);


 m68ki_push_16(0);


 m68ki_push_16(0xb000 | (vector<<2));


 m68ki_push_32(pc);


 m68ki_push_16(sr);
}
