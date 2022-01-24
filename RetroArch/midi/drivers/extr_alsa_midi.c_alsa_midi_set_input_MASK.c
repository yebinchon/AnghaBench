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
typedef  int /*<<< orphan*/  snd_seq_port_subscribe_t ;
struct TYPE_4__ {int port; int /*<<< orphan*/  client; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq; TYPE_2__ in_dest; int /*<<< orphan*/  in; } ;
typedef  TYPE_1__ alsa_midi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SND_SEQ_PORT_CAP_READ ; 
 int SND_SEQ_PORT_CAP_SUBS_READ ; 
 int SND_SEQ_PORT_CAP_SUBS_WRITE ; 
 int SND_SEQ_PORT_CAP_WRITE ; 
 int /*<<< orphan*/  SND_SEQ_PORT_TYPE_APPLICATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(void *p, const char *input)
{
   int r;
   snd_seq_port_subscribe_t *sub;
   alsa_midi_t *d = (alsa_midi_t*)p;

   if (!input)
   {
      if (d->in_dest.port >= 0)
      {
         FUNC4(d->seq, d->in_dest.port);
         d->in_dest.port = -1;
      }

      return true;
   }

   if (!FUNC1(d->seq, input, SND_SEQ_PORT_CAP_READ |
         SND_SEQ_PORT_CAP_SUBS_READ, &d->in))
      return false;

   r = FUNC3(d->seq, "in", SND_SEQ_PORT_CAP_WRITE |
         SND_SEQ_PORT_CAP_SUBS_WRITE, SND_SEQ_PORT_TYPE_APPLICATION);
   if (r < 0)
   {
      FUNC0("[MIDI]: snd_seq_create_simple_port failed with error %d.\n", r);
      return false;
   }

   d->in_dest.client = FUNC2(d->seq);
   d->in_dest.port   = r;

   FUNC5(&sub);
   FUNC7(sub, &d->in);
   FUNC6(sub, &d->in_dest);
   r = FUNC8(d->seq, sub);
   if (r < 0)
      FUNC0("[MIDI]: snd_seq_subscribe_port failed with error %d.\n", r);

   return r >= 0;
}