#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int effect; scalar_t__ param; int volume; } ;
struct channel {scalar_t__ fx_count; int volume; int panning; int gvol_slide_param; int pan_slide_param; int arpeggio_add; int arpeggio_param; int /*<<< orphan*/  vibrato_speed; int /*<<< orphan*/  vibrato_phase; TYPE_2__ note; int /*<<< orphan*/  sample_fra; int /*<<< orphan*/  sample_idx; TYPE_1__* replay; int /*<<< orphan*/  tremolo_speed; int /*<<< orphan*/  tremolo_phase; int /*<<< orphan*/  porta_down_param; int /*<<< orphan*/  porta_up_param; int /*<<< orphan*/  retrig_count; scalar_t__ vibrato_add; } ;
struct TYPE_3__ {int global_vol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct channel*) ; 
 int /*<<< orphan*/  FUNC8 (struct channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct channel*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct channel*) ; 

__attribute__((used)) static void FUNC13( struct channel *channel ) {
	channel->vibrato_add = 0;
	channel->fx_count++;
	channel->retrig_count++;
	if( !( channel->note.effect == 0x7D && channel->fx_count <= channel->note.param ) ) {
		switch( channel->note.volume & 0xF0 ) {
			case 0x60: /* Vol Slide Down.*/
				channel->volume -= channel->note.volume & 0xF;
				if( channel->volume < 0 ) {
					channel->volume = 0;
				}
				break;
			case 0x70: /* Vol Slide Up.*/
				channel->volume += channel->note.volume & 0xF;
				if( channel->volume > 64 ) {
					channel->volume = 64;
				}
				break;
			case 0xB0: /* Vibrato.*/
				channel->vibrato_phase += channel->vibrato_speed;
				FUNC11( channel, 0 );
				break;
			case 0xD0: /* Pan Slide Left.*/
				channel->panning -= channel->note.volume & 0xF;
				if( channel->panning < 0 ) {
					channel->panning = 0;
				}
				break;
			case 0xE0: /* Pan Slide Right.*/
				channel->panning += channel->note.volume & 0xF;
				if( channel->panning > 255 ) {
					channel->panning = 255;
				}
				break;
			case 0xF0: /* Tone Porta.*/
				FUNC6( channel );
				break;
		}
	}
	switch( channel->note.effect ) {
		case 0x01: case 0x86: /* Porta Up. */
			FUNC4( channel, channel->porta_up_param );
			break;
		case 0x02: case 0x85: /* Porta Down. */
			FUNC3( channel, channel->porta_down_param );
			break;
		case 0x03: case 0x87: /* Tone Porta. */
			FUNC6( channel );
			break;
		case 0x04: case 0x88: /* Vibrato. */
			channel->vibrato_phase += channel->vibrato_speed;
			FUNC11( channel, 0 );
			break;
		case 0x05: case 0x8C: /* Tone Porta + Vol Slide. */
			FUNC6( channel );
			FUNC12( channel );
			break;
		case 0x06: case 0x8B: /* Vibrato + Vol Slide. */
			channel->vibrato_phase += channel->vibrato_speed;
			FUNC11( channel, 0 );
			FUNC12( channel );
			break;
		case 0x07: case 0x92: /* Tremolo. */
			channel->tremolo_phase += channel->tremolo_speed;
			FUNC7( channel );
			break;
		case 0x0A: case 0x84: /* Vol Slide. */
			FUNC12( channel );
			break;
		case 0x11: /* Global Volume Slide. */
			channel->replay->global_vol = channel->replay->global_vol
				+ ( channel->gvol_slide_param >> 4 )
				- ( channel->gvol_slide_param & 0xF );
			if( channel->replay->global_vol < 0 ) {
				channel->replay->global_vol = 0;
			}
			if( channel->replay->global_vol > 64 ) {
				channel->replay->global_vol = 64;
			}
			break;
		case 0x19: /* Panning Slide. */
			channel->panning = channel->panning
				+ ( channel->pan_slide_param >> 4 )
				- ( channel->pan_slide_param & 0xF );
			if( channel->panning < 0 ) {
				channel->panning = 0;
			}
			if( channel->panning > 255 ) {
				channel->panning = 255;
			}
			break;
		case 0x1B: case 0x91: /* Retrig + Vol Slide. */
			FUNC5( channel );
			break;
		case 0x1D: case 0x89: /* Tremor. */
			FUNC8( channel );
			break;
		case 0x79: /* Retrig. */
			if( channel->fx_count >= channel->note.param ) {
				channel->fx_count = 0;
				channel->sample_idx = channel->sample_fra = 0;
			}
			break;
		case 0x7C: case 0xFC: /* Note Cut. */
			if( channel->note.param == channel->fx_count ) {
				channel->volume = 0;
			}
			break;
		case 0x7D: case 0xFD: /* Note Delay. */
			if( channel->note.param == channel->fx_count ) {
				FUNC9( channel );
			}
			break;
		case 0x8A: /* Arpeggio. */
			if( channel->fx_count == 1 ) {
				channel->arpeggio_add = channel->arpeggio_param >> 4;
			} else if( channel->fx_count == 2 ) {
				channel->arpeggio_add = channel->arpeggio_param & 0xF;
			} else {
				channel->arpeggio_add = channel->fx_count = 0;
			}
			break;
		case 0x95: /* Fine Vibrato. */
			channel->vibrato_phase += channel->vibrato_speed;
			FUNC11( channel, 1 );
			break;
	}
	FUNC0( channel );
	FUNC2( channel );
	FUNC1( channel );
	FUNC10( channel );
}