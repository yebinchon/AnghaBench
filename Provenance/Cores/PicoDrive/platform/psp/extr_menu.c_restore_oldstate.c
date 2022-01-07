
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int video; int * vsram; int * cram; int * vram; } ;


 TYPE_1__ Pico ;
 int free (void*) ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static void restore_oldstate(void *ptrx)
{
 unsigned char *ptr = ptrx;
 memcpy(Pico.vram, ptr, sizeof(Pico.vram));
 memcpy(Pico.cram, ptr + sizeof(Pico.vram), sizeof(Pico.cram));
 memcpy(Pico.vsram, ptr + sizeof(Pico.vram) + sizeof(Pico.cram), sizeof(Pico.vsram));
 memcpy(&Pico.video,ptr + sizeof(Pico.vram) + sizeof(Pico.cram) + sizeof(Pico.vsram), sizeof(Pico.video));
 free(ptrx);
}
