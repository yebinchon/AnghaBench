
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int m68ki_fake_push_16 () ;
 int m68ki_fake_push_32 () ;
 int m68ki_push_16 (int) ;
 int m68ki_push_32 (int) ;

void m68ki_stack_frame_1000(uint pc, uint sr, uint vector)
{




 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();
 m68ki_fake_push_32();


 m68ki_push_16(0);


 m68ki_fake_push_16();


 m68ki_push_16(0);


 m68ki_fake_push_16();


 m68ki_push_16(0);


 m68ki_fake_push_16();


 m68ki_push_32(0);


 m68ki_push_16(0);


 m68ki_push_16(0x8000 | (vector<<2));


 m68ki_push_32(pc);


 m68ki_push_16(sr);
}
