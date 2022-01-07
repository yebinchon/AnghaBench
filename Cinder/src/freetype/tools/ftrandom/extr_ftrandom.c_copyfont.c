
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fontlist {char* name; int len; scalar_t__ isascii; scalar_t__ isbinary; } ;
typedef int buffer ;
typedef int FILE ;


 int SEEK_SET ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int fwrite (char*,int,size_t,int *) ;
 unsigned int getErrorCnt (struct fontlist*) ;
 int getRandom (int,int) ;
 int putc (int,int *) ;
 int stderr ;
 int unlink (char*) ;

__attribute__((used)) static int
  copyfont( struct fontlist* item,
            char* newfont )
  {
    static char buffer[8096];
    FILE *good, *newf;
    size_t len;
    unsigned int i, err_cnt;


    good = fopen( item->name, "r" );
    if ( !good )
    {
      fprintf( stderr, "Can't open `%s'\n", item->name );
      return 0;
    }

    newf = fopen( newfont, "w+" );
    if ( !newf )
    {
      fprintf( stderr, "Can't create temporary output file `%s'\n",
               newfont );
      exit( 1 );
    }

    while ( ( len = fread( buffer, 1, sizeof ( buffer ), good ) ) > 0 )
      fwrite( buffer, 1, len, newf );

    fclose( good );

    err_cnt = getErrorCnt( item );
    for ( i = 0; i < err_cnt; i++ )
    {
      fseek( newf, getRandom( 0, (int)( item->len - 1 ) ), SEEK_SET );

      if ( item->isbinary )
        putc( getRandom( 0, 0xFF ), newf );
      else if ( item->isascii )
        putc( getRandom( 0x20, 0x7E ), newf );
      else
      {
        int hex = getRandom( 0, 15 );


        if ( hex < 10 )
          hex += '0';
        else
          hex += 'A' - 10;

        putc( hex, newf );
      }
    }

    if ( ferror( newf ) )
    {
      fclose( newf );
      unlink( newfont );
      return 0;
    }

    fclose( newf );

    return 1;
  }
