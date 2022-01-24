#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sample {int fine_tune; int volume; int loop_start; int loop_length; short* data; } ;
struct pattern {int num_channels; int num_rows; char* data; } ;
struct module {int sequence_len; int restart_pos; unsigned char* sequence; int num_patterns; int num_channels; int c2_rate; int gain; int default_gvol; int default_speed; int default_tempo; unsigned char* default_panning; int num_instruments; struct instrument* instruments; struct pattern* patterns; int /*<<< orphan*/  name; } ;
struct instrument {int num_samples; int /*<<< orphan*/  name; struct sample* samples; } ;
struct data {int dummy; } ;

/* Variables and functions */
 int FP_ONE ; 
 int FP_SHIFT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct data*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct data*,int,int,short*) ; 
 int FUNC3 (struct data*,int) ; 
 int FUNC4 (struct data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static struct module* FUNC8( struct data *data, char *message ) {
	int idx, pat, module_data_idx, pat_data_len, pat_data_idx;
	int period, key, ins, effect, param, fine_tune;
	int sample_length, loop_start, loop_length;
	char *pattern_data;
	struct instrument *instrument;
	struct sample *sample;
	struct module *module = (struct module*)FUNC0( 1, sizeof( struct module ) );
	if( module ) {
		FUNC1( data, 0, 20, module->name );
		module->sequence_len = FUNC4( data, 950 ) & 0x7F;
		module->restart_pos = FUNC4( data, 951 ) & 0x7F;
		if( module->restart_pos >= module->sequence_len ) {
			module->restart_pos = 0;
		}
		module->sequence = (unsigned char*)FUNC0( 128, sizeof( unsigned char ) );
		if( !module->sequence ){
			FUNC5( module );
			return NULL;
		}
		for( idx = 0; idx < 128; idx++ ) {
			pat = FUNC4( data, 952 + idx ) & 0x7F;
			module->sequence[ idx ] = pat;
			if( pat >= module->num_patterns ) {
				module->num_patterns = pat + 1;
			}
		}
		switch( FUNC3( data, 1082 ) ) {
			case 0x4b2e: /* M.K. */
			case 0x4b21: /* M!K! */
			case 0x5434: /* FLT4 */
				module->num_channels = 4;
				module->c2_rate = 8287;
				module->gain = 64;
				break;
			case 0x484e: /* xCHN */
				module->num_channels = FUNC4( data, 1080 ) - 48;
				module->c2_rate = 8363;
				module->gain = 32;
				break;
			case 0x4348: /* xxCH */
				module->num_channels = ( FUNC4( data, 1080 ) - 48 ) * 10;
				module->num_channels += FUNC4( data, 1081 ) - 48;
				module->c2_rate = 8363;
				module->gain = 32;
				break;
			default:
				FUNC7( message, "MOD Format not recognised!" );
				FUNC5( module );
				return NULL;
		}
		module->default_gvol = 64;
		module->default_speed = 6;
		module->default_tempo = 125;
		module->default_panning = (unsigned char*)FUNC0( module->num_channels, sizeof( unsigned char ) );
		if( !module->default_panning ) {
			FUNC5( module );
			return NULL;
		}
		for( idx = 0; idx < module->num_channels; idx++ ) {
			module->default_panning[ idx ] = 51;
			if( ( idx & 3 ) == 1 || ( idx & 3 ) == 2 ) {
				module->default_panning[ idx ] = 204;
			}
		}
		module_data_idx = 1084;
		module->patterns = (struct pattern*)FUNC0( module->num_patterns, sizeof( struct pattern ) );
		if( !module->patterns ) {
			FUNC5( module );
			return NULL;
		}
		pat_data_len = module->num_channels * 64 * 5;
		for( pat = 0; pat < module->num_patterns; pat++ ) {
			module->patterns[ pat ].num_channels = module->num_channels;
			module->patterns[ pat ].num_rows = 64;
			pattern_data = (char*)FUNC0( 1, pat_data_len );
			if( !pattern_data ) {
				FUNC5( module );
				return NULL;
			}
			module->patterns[ pat ].data = pattern_data;
			for( pat_data_idx = 0; pat_data_idx < pat_data_len; pat_data_idx += 5 ) {
				period = ( FUNC4( data, module_data_idx ) & 0xF ) << 8;
				period = ( period | FUNC4( data, module_data_idx + 1 ) ) * 4;
				if( period >= 112 && period <= 6848 ) {
					key = -12 * FUNC6( ( period << FP_SHIFT ) / 29021 );
					key = ( key + ( key & ( FP_ONE >> 1 ) ) ) >> FP_SHIFT;
					pattern_data[ pat_data_idx ] = key;
				}
				ins = ( FUNC4( data, module_data_idx + 2 ) & 0xF0 ) >> 4;
				ins = ins | ( FUNC4( data, module_data_idx ) & 0x10 );
				pattern_data[ pat_data_idx + 1 ] = ins;
				effect = FUNC4( data, module_data_idx + 2 ) & 0x0F;
				param  = FUNC4( data, module_data_idx + 3 );
				if( param == 0 && ( effect < 3 || effect == 0xA ) ) {
					effect = 0;
				}
				if( param == 0 && ( effect == 5 || effect == 6 ) ) {
					effect -= 2;
				}
				if( effect == 8 && module->num_channels == 4 ) {
					effect = param = 0;
				}
				pattern_data[ pat_data_idx + 3 ] = effect;
				pattern_data[ pat_data_idx + 4 ] = param;
				module_data_idx += 4;
			}
		}
		module->num_instruments = 31;
		module->instruments = (struct instrument*)FUNC0( module->num_instruments + 1, sizeof( struct instrument ) );
		if( !module->instruments ) {
			FUNC5( module );
			return NULL;
		}
		instrument = &module->instruments[ 0 ];
		instrument->num_samples = 1;
		instrument->samples = (struct sample*)FUNC0( 1, sizeof( struct sample ) );
		if( !instrument->samples ) {
			FUNC5( module );
			return NULL;
		}
		for( ins = 1; ins <= module->num_instruments; ins++ ) {
			instrument = &module->instruments[ ins ];
			instrument->num_samples = 1;
			instrument->samples = (struct sample*)FUNC0( 1, sizeof( struct sample ) );
			if( !instrument->samples ) {
				FUNC5( module );
				return NULL;
			}
			sample = &instrument->samples[ 0 ];
			FUNC1( data, ins * 30 - 10, 22, instrument->name );
			sample_length = FUNC3( data, ins * 30 + 12 ) * 2;
			fine_tune = ( FUNC4( data, ins * 30 + 14 ) & 0xF ) << 4;
			sample->fine_tune = ( fine_tune & 0x7F ) - ( fine_tune & 0x80 );
			sample->volume = FUNC4( data, ins * 30 + 15 ) & 0x7F;
			if( sample->volume > 64 ) {
				sample->volume = 64;
			}
			loop_start = FUNC3( data, ins * 30 + 16 ) * 2;
			loop_length = FUNC3( data, ins * 30 + 18 ) * 2;
			if( loop_start + loop_length > sample_length ) {
				loop_length = sample_length - loop_start;
			}
			if( loop_length < 4 ) {
				loop_start = sample_length;
				loop_length = 0;
			}
			sample->loop_start = loop_start;
			sample->loop_length = loop_length;
			sample->data = (short*)FUNC0( sample_length + 1, sizeof( short ) );
			if( sample->data ) {
				FUNC2( data, module_data_idx, sample_length, sample->data );
				sample->data[ loop_start + loop_length ] = sample->data[ loop_start ];
			} else {
				FUNC5( module );
				return NULL;
			}
			module_data_idx += sample_length;
		}
	}
	return module;
}