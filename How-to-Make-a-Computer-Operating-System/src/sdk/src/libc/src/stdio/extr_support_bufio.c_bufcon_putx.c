
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufcon_putc (char*,unsigned char) ;
 int bufcon_puts (char*,char*) ;

char* bufcon_putx( char *buffer, unsigned int p )
{
   int offset;
   unsigned char c;
   int found = 0;

   bufcon_puts( buffer, "0x" );

   for ( offset = 28; offset >= 0; offset -= 4 )
   {
     c = (p>>offset) & 0xF;
     if ( c != 0 ) found = 1;
     if ( found == 1 )
     {
       if ( c < 10 ) bufcon_putc( buffer, c + '0' );
         else bufcon_putc( buffer, c - 10 + 'a' );
     }
   }

   if (found == 0 ) bufcon_putc( buffer, '0' );

   return buffer;
}
