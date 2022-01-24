#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pkt ;
typedef  scalar_t__ jack_nframes_t ;
struct TYPE_7__ {scalar_t__ max; } ;
typedef  TYPE_1__ jack_latency_range_t ;
struct TYPE_9__ {double pts; scalar_t__ data; } ;
struct TYPE_8__ {double sample_rate; int buffer_size; int pkt_xrun; int nports; int /*<<< orphan*/  packet_count; int /*<<< orphan*/  filled_pkts; int /*<<< orphan*/ * ports; int /*<<< orphan*/  new_pkts; int /*<<< orphan*/  timefilter; int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ JackData ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  JackCaptureLatency ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 double FUNC4 () ; 
 double FUNC5 (int /*<<< orphan*/ ,double,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 float* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(jack_nframes_t nframes, void *arg)
{
    /* Warning: this function runs in realtime. One mustn't allocate memory here
     * or do any other thing that could block. */

    int i, j;
    JackData *self = arg;
    float * buffer;
    jack_nframes_t latency, cycle_delay;
    AVPacket pkt;
    float *pkt_data;
    double cycle_time;

    if (!self->client)
        return 0;

    /* The approximate delay since the hardware interrupt as a number of frames */
    cycle_delay = FUNC6(self->client);

    /* Retrieve filtered cycle time */
    cycle_time = FUNC5(self->timefilter,
                                      FUNC4() / 1000000.0 - (double) cycle_delay / self->sample_rate,
                                      self->buffer_size);

    /* Check if an empty packet is available, and if there's enough space to send it back once filled */
    if ((FUNC2(self->new_pkts) < sizeof(pkt)) || (FUNC3(self->filled_pkts) < sizeof(pkt))) {
        self->pkt_xrun = 1;
        return 0;
    }

    /* Retrieve empty (but allocated) packet */
    FUNC0(self->new_pkts, &pkt, sizeof(pkt), NULL);

    pkt_data  = (float *) pkt.data;
    latency   = 0;

    /* Copy and interleave audio data from the JACK buffer into the packet */
    for (i = 0; i < self->nports; i++) {
        jack_latency_range_t range;
        FUNC8(self->ports[i], JackCaptureLatency, &range);
        latency += range.max;
        buffer = FUNC7(self->ports[i], self->buffer_size);
        for (j = 0; j < self->buffer_size; j++)
            pkt_data[j * self->nports + i] = buffer[j];
    }

    /* Timestamp the packet with the cycle start time minus the average latency */
    pkt.pts = (cycle_time - (double) latency / (self->nports * self->sample_rate)) * 1000000.0;

    /* Send the now filled packet back, and increase packet counter */
    FUNC1(self->filled_pkts, &pkt, sizeof(pkt), NULL);
    FUNC9(&self->packet_count);

    return 0;
}