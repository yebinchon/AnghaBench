
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm_host_init () ;
 int exit (int) ;
 int printf (char*,char*) ;
 int video_decode_test (char*) ;

int main (int argc, char **argv)
{
   if (argc < 2) {
      printf("Usage: %s <filename>\n", argv[0]);
      exit(1);
   }
   bcm_host_init();
   return video_decode_test(argv[1]);
}
