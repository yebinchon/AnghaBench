#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {int rate; int channels; int buffer_size; int max_latency; int samplesize; char* identity; scalar_t__ format; int /*<<< orphan*/ * port; int /*<<< orphan*/ * host; } ;
typedef  TYPE_1__ rsound_t ;
typedef  enum rsd_settings { ____Placeholder_rsd_settings } rsd_settings ;

/* Variables and functions */
#define  RSD_BUFSIZE 135 
#define  RSD_CHANNELS 134 
#define  RSD_FORMAT 133 
#define  RSD_HOST 132 
#define  RSD_IDENTITY 131 
#define  RSD_LATENCY 130 
#define  RSD_PORT 129 
 scalar_t__ RSD_S16_LE ; 
#define  RSD_SAMPLERATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,int) ; 

int FUNC5(rsound_t *rd, enum rsd_settings option, void* param)
{
	FUNC1(rd != NULL);
	FUNC1(param != NULL);
	int retval = 0;

	switch(option)
	{
		case RSD_SAMPLERATE:
			if ( *(int*)param > 0 )
			{
				rd->rate = *((int*)param);
				break;
			}
			else
				retval = -1;
			break;
		case RSD_CHANNELS:
			if ( *(int*)param > 0 )
			{
				rd->channels = *((int*)param);
				break;
			}
			else
				retval = -1;
			break;
		case RSD_HOST:
			if ( rd->host != NULL )
				FUNC0(rd->host);
			rd->host = FUNC3((char*)param);
			break;
		case RSD_PORT:
			if ( rd->port != NULL )
				FUNC0(rd->port);
			rd->port = FUNC3((char*)param);
			break;
		case RSD_BUFSIZE:
			if ( *(int*)param > 0 )
			{
				rd->buffer_size = *((int*)param);
				break;
			}
			else
				retval = -1;
			break;
		case RSD_LATENCY:
			rd->max_latency = *((int*)param);
			break;

			// Checks if format is valid.
		case RSD_FORMAT:
			rd->format = (uint16_t)(*((int*)param));
			rd->samplesize = FUNC2(rd->format);

			if ( rd->samplesize == -1 )
			{
				rd->format = RSD_S16_LE;
				rd->samplesize = FUNC2(RSD_S16_LE);
				*((int*)param) = (int)RSD_S16_LE;
			}
			break;

		case RSD_IDENTITY:
			FUNC4(rd->identity, param, sizeof(rd->identity));
			rd->identity[sizeof(rd->identity)-1] = '\0';
			break;

		default:
			retval = -1;
	}

	return retval;
}