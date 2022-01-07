
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_t {int** in; int * out; int ntsc; } ;


 int fflush (int ) ;
 int free (struct data_t*) ;
 int in_height ;
 int in_width ;
 scalar_t__ malloc (int) ;
 int nes_ntsc_blit (int *,int*,int,int ,int,int,int ,int) ;
 int nes_ntsc_init (int *,int ) ;
 int printf (char*) ;
 int rand () ;
 int stdout ;
 scalar_t__ time_blitter () ;

int main()
{
 struct data_t* data = (struct data_t*) malloc( sizeof *data );
 if ( data )
 {

  int y;
  for ( y = 0; y < in_height; y++ )
  {
   int x;
   for ( x = 0; x < in_width; x++ )
    data->in [y] [x] = rand() >> 4 & 0x1F;
  }

  printf( "Timing nes_ntsc...\n" );
  fflush( stdout );

  nes_ntsc_init( &data->ntsc, 0 );


  while ( time_blitter() )
  {
   nes_ntsc_blit( &data->ntsc, data->in [0], in_width, 0,
    in_width, in_height, data->out [0], sizeof data->out [0] );
  }

  free( data );
 }

 return 0;
}
