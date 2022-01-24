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
typedef  int /*<<< orphan*/  snd_seq_t ;
typedef  int /*<<< orphan*/  snd_seq_port_info_t ;
typedef  int /*<<< orphan*/  snd_seq_client_info_t ;
struct TYPE_3__ {int client; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ snd_seq_addr_t ;

/* Variables and functions */
 unsigned int SND_SEQ_PORT_TYPE_MIDI_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC13(snd_seq_t *seq, const char *name, unsigned caps,
      snd_seq_addr_t *addr)
{
   snd_seq_client_info_t *client_info;
   snd_seq_port_info_t *port_info;

   FUNC0(&client_info);
   FUNC3(&port_info);

   FUNC2(client_info, -1);
   while (FUNC10(seq, client_info) == 0)
   {
      int client_id = FUNC1(client_info);

      FUNC8(port_info, client_id);
      FUNC9(port_info, -1);

      while (FUNC11(seq, port_info) == 0)
      {
         unsigned port_caps = FUNC4(port_info);
         unsigned type      = FUNC7(port_info);

         if ((type & SND_SEQ_PORT_TYPE_MIDI_GENERIC) && (port_caps & caps) == caps)
         {
            const char *port_name = FUNC5(port_info);

            if (FUNC12(port_name, name))
            {
               addr->client = client_id;
               addr->port   = FUNC6(port_info);

               return true;
            }
         }
      }
   }

   return false;
}