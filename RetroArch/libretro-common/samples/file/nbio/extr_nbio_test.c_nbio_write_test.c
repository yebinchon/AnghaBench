
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_t {int dummy; } ;


 int NBIO_WRITE ;
 int memset (void*,int,int) ;
 int nbio_begin_write (struct nbio_t*) ;
 int nbio_free (struct nbio_t*) ;
 void* nbio_get_ptr (struct nbio_t*,size_t*) ;
 int nbio_iterate (struct nbio_t*) ;
 struct nbio_t* nbio_open (char*,int ) ;
 int nbio_resize (struct nbio_t*,int) ;
 int puts (char*) ;

__attribute__((used)) static void nbio_write_test(void)
{
   size_t size;
   bool looped = 0;
   void* ptr = ((void*)0);
   struct nbio_t* write = nbio_open("test.bin", NBIO_WRITE);
   if (!write)
      puts("[ERROR]: nbio_open failed (1)");

   nbio_resize(write, 1024*1024);

   ptr = nbio_get_ptr(write, &size);
   if (size != 1024*1024)
      puts("[ERROR]: wrong size (1)");

   memset(ptr, 0x42, 1024*1024);
   nbio_begin_write(write);

   while (!nbio_iterate(write))
      looped=1;

   if (!looped)
      puts("[SUCCESS]: Write finished immediately.");

   nbio_free(write);
}
