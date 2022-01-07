
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pointer ;
struct TYPE_2__ {int (* SetFetch ) (int,int,int ) ;} ;


 int C68K ;
 int C68k_Init (int *,int *) ;
 TYPE_1__* M68K ;
 int * SoundDummy ;
 int * T2MemoryInit (int) ;
 int memset (int *,int,int) ;
 int stub1 (int,int,int ) ;

__attribute__((used)) static int M68KC68KInit(void) {
 int i;



 if ((SoundDummy = T2MemoryInit(0x10000)) != ((void*)0))
  memset(SoundDummy, 0xFF, 0x10000);

 C68k_Init(&C68K, ((void*)0));

 for (i = 0x10; i < 0x100; i++)
  M68K->SetFetch(i << 16, (i << 16) + 0xFFFF, (pointer)SoundDummy);

 return 0;
}
