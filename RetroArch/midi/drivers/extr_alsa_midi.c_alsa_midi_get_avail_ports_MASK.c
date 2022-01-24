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
union string_list_elem_attr {int /*<<< orphan*/  member_0; } ;
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  snd_seq_t ;
typedef  int /*<<< orphan*/  snd_seq_port_info_t ;
typedef  int /*<<< orphan*/  snd_seq_client_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SND_SEQ_NONBLOCK ; 
 int /*<<< orphan*/  SND_SEQ_OPEN_DUPLEX ; 
 unsigned int SND_SEQ_PORT_TYPE_MIDI_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,char const*,union string_list_elem_attr) ; 

__attribute__((used)) static bool FUNC15(struct string_list *ports, unsigned caps)
{
   int r;
   snd_seq_t *seq;
   snd_seq_client_info_t *client_info;
   snd_seq_port_info_t *port_info;
   union string_list_elem_attr attr = {0};

   FUNC1(&client_info);
   FUNC6(&port_info);

   r = FUNC5(&seq, "default", SND_SEQ_OPEN_DUPLEX, SND_SEQ_NONBLOCK);
   if (r < 0)
   {
      FUNC0("[MIDI]: snd_seq_open failed with error %d.\n", r);
      return false;
   }

   FUNC3(client_info, -1);

   while (FUNC12(seq, client_info) == 0)
   {
      int client = FUNC2(client_info);

      FUNC10(port_info, client);
      FUNC11(port_info, -1);

      while (FUNC13(seq, port_info) == 0)
      {
         unsigned port_caps = FUNC7(port_info);
         unsigned port_type = FUNC9(port_info);

         if ((port_type & SND_SEQ_PORT_TYPE_MIDI_GENERIC) &&
               (port_caps & caps) == caps)
         {
            const char *port_name = FUNC8(port_info);

            if (!FUNC14(ports, port_name, attr))
            {
               FUNC0("[MIDI]: string_list_append failed.\n");
               FUNC4(seq);

               return false;
            }
         }
      }
   }

   FUNC4(seq);

   return true;
}