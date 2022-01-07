
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * SoundDummy ;
 int T2MemoryDeInit (int *) ;

__attribute__((used)) static void M68KC68KDeInit(void) {
 if (SoundDummy)
  T2MemoryDeInit(SoundDummy);
 SoundDummy = ((void*)0);
}
