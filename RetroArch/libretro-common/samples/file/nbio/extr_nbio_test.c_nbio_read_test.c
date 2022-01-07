
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_t {int dummy; } ;


 int NBIO_READ ;
 scalar_t__ memcmp (void*,char*,int) ;
 int nbio_begin_read (struct nbio_t*) ;
 int nbio_free (struct nbio_t*) ;
 void* nbio_get_ptr (struct nbio_t*,size_t*) ;
 int nbio_iterate (struct nbio_t*) ;
 struct nbio_t* nbio_open (char*,int ) ;
 int puts (char*) ;

__attribute__((used)) static void nbio_read_test(void)
{
   size_t size;
   bool looped = 0;
   struct nbio_t* read = nbio_open("test.bin", NBIO_READ);
   void* ptr = nbio_get_ptr(read, &size);
   if (!read)
      puts("[ERROR]: nbio_open failed (2)");

   if (size != 1024*1024)
      puts("[ERROR]: wrong size (2)");
   if (ptr)
      puts("[SUCCESS]: Read pointer is available before iterating.");

   nbio_begin_read(read);

   while (!nbio_iterate(read))
      looped=1;

   if (!looped)
      puts("[SUCCESS]: Read finished immediately.");

   ptr = nbio_get_ptr(read, &size);

   if (size != 1024*1024)
      puts("[ERROR]: wrong size (3)");
   if (*(char*)ptr != 0x42 || memcmp(ptr, (char*)ptr+1, 1024*1024-1))
      puts("[ERROR]: wrong data");

   nbio_free(read);
}
