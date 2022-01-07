
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _940_data_t ;
typedef int _940_ctl_t ;


 unsigned char* MAP_FAILED ;
 int MAP_SHARED ;
 int MP3_SIZE_MAX ;
 int PROT_READ ;
 int PROT_WRITE ;
 int crashed_940 ;
 int errno ;
 int exit (int) ;
 int memdev ;
 scalar_t__ mmap (int ,int,int,int ,int ,int) ;
 unsigned char* mp3_mem ;
 int printf (char*,int) ;
 int * shared_ctl ;
 int * shared_data ;
 unsigned char* shared_mem ;

void sharedmem940_init(void)
{
 if (shared_mem != ((void*)0)) return;

 shared_mem = (unsigned char *) mmap(0, 0x210000, PROT_READ|PROT_WRITE, MAP_SHARED, memdev, 0x2000000);
 if (shared_mem == MAP_FAILED)
 {
  printf("mmap(shared_data) failed with %i\n", errno);
  exit(1);
 }
 shared_data = (_940_data_t *) (shared_mem+0x100000);

 shared_ctl = (_940_ctl_t *) (shared_mem+0x200000);
 mp3_mem = (unsigned char *) mmap(0, MP3_SIZE_MAX, PROT_READ|PROT_WRITE, MAP_SHARED, memdev, 0x2400000);
 if (mp3_mem == MAP_FAILED)
 {
  printf("mmap(mp3_mem) failed with %i\n", errno);
  exit(1);
 }
 crashed_940 = 1;
}
