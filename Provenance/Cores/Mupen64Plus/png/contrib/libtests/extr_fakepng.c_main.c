
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IHDR ;
 int fwrite (int ,int,int,int ) ;
 int put_chunk (int ,int) ;
 int signature ;
 int stdout ;
 int unknown ;

int
main(void)
{
   fwrite(signature, sizeof signature, 1, stdout);
   put_chunk(IHDR, sizeof IHDR);

   for (;;)
      put_chunk(unknown, sizeof unknown);
}
