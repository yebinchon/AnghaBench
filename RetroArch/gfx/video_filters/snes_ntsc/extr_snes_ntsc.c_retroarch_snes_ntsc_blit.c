
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snes_ntsc_t ;
typedef int snes_ntsc_out_t ;
typedef int SNES_NTSC_IN_T ;


 int SNES_NTSC_ADJ_IN (int const) ;
 int SNES_NTSC_BEGIN_ROW (int const*,int,int ,int ,int ) ;
 int SNES_NTSC_COLOR_IN (int,int ) ;
 int SNES_NTSC_OUT_DEPTH ;
 int SNES_NTSC_RGB_OUT (int,int ,int ) ;
 int snes_ntsc_black ;
 int snes_ntsc_burst_count ;
 int snes_ntsc_in_chunk ;

void retroarch_snes_ntsc_blit( snes_ntsc_t const* ntsc, SNES_NTSC_IN_T const* input, long in_row_width,
  int burst_phase, int in_width, int in_height, void* rgb_out, long out_pitch, int first, int last )
{
 int chunk_count = (in_width - 1) / snes_ntsc_in_chunk;
 for ( ; in_height; --in_height )
 {
  SNES_NTSC_IN_T const* line_in = input;
  SNES_NTSC_BEGIN_ROW( ntsc, burst_phase,
    snes_ntsc_black, snes_ntsc_black, SNES_NTSC_ADJ_IN( *line_in ) );
  snes_ntsc_out_t* line_out = (snes_ntsc_out_t*) rgb_out;
  int n;
  ++line_in;

  for ( n = chunk_count; n; --n )
  {

   SNES_NTSC_COLOR_IN( 0, SNES_NTSC_ADJ_IN( line_in [0] ) );
   SNES_NTSC_RGB_OUT( 0, line_out [0], SNES_NTSC_OUT_DEPTH );
   SNES_NTSC_RGB_OUT( 1, line_out [1], SNES_NTSC_OUT_DEPTH );

   SNES_NTSC_COLOR_IN( 1, SNES_NTSC_ADJ_IN( line_in [1] ) );
   SNES_NTSC_RGB_OUT( 2, line_out [2], SNES_NTSC_OUT_DEPTH );
   SNES_NTSC_RGB_OUT( 3, line_out [3], SNES_NTSC_OUT_DEPTH );

   SNES_NTSC_COLOR_IN( 2, SNES_NTSC_ADJ_IN( line_in [2] ) );
   SNES_NTSC_RGB_OUT( 4, line_out [4], SNES_NTSC_OUT_DEPTH );
   SNES_NTSC_RGB_OUT( 5, line_out [5], SNES_NTSC_OUT_DEPTH );
   SNES_NTSC_RGB_OUT( 6, line_out [6], SNES_NTSC_OUT_DEPTH );

   line_in += 3;
   line_out += 7;
  }


  SNES_NTSC_COLOR_IN( 0, snes_ntsc_black );
  SNES_NTSC_RGB_OUT( 0, line_out [0], SNES_NTSC_OUT_DEPTH );
  SNES_NTSC_RGB_OUT( 1, line_out [1], SNES_NTSC_OUT_DEPTH );

  SNES_NTSC_COLOR_IN( 1, snes_ntsc_black );
  SNES_NTSC_RGB_OUT( 2, line_out [2], SNES_NTSC_OUT_DEPTH );
  SNES_NTSC_RGB_OUT( 3, line_out [3], SNES_NTSC_OUT_DEPTH );

  SNES_NTSC_COLOR_IN( 2, snes_ntsc_black );
  SNES_NTSC_RGB_OUT( 4, line_out [4], SNES_NTSC_OUT_DEPTH );
  SNES_NTSC_RGB_OUT( 5, line_out [5], SNES_NTSC_OUT_DEPTH );
  SNES_NTSC_RGB_OUT( 6, line_out [6], SNES_NTSC_OUT_DEPTH );

  burst_phase = (burst_phase + 1) % snes_ntsc_burst_count;
  input += in_row_width;
  rgb_out = (char*) rgb_out + out_pitch;
 }
}
