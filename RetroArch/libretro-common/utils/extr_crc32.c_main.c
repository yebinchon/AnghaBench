
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int buffer ;
typedef int FILE ;


 int encoding_crc32 (int,int *,int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (void*,int,int,int *) ;
 int printf (char*,int) ;
 int stderr ;
 char* strerror (int ) ;

int main(int argc, const char* argv[])
{
   if (argc != 2 )
   {
      fprintf( stderr, "Usage: crc32 <filename>\n" );
      return 1;
   }

   FILE *file = fopen(argv[1], "rb");

   if (file)
   {
      uint32_t crc = encoding_crc32(0L, ((void*)0), 0 );

      for (;;)
      {
         uint8_t buffer[16384];

         int numread = fread((void*)buffer, 1, sizeof(buffer), file);

         if (numread > 0)
            crc = encoding_crc32( crc, buffer, numread );
         else
            break;
      }

      fclose(file);

      printf("%08x\n", crc);
      return 0;
   }

   fprintf(stderr, "Error opening input file: %s\n", strerror(errno));
   return 1;
}
