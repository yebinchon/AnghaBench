
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int snd_seq_t ;
typedef int snd_seq_port_info_t ;
typedef int snd_seq_client_info_t ;
struct TYPE_3__ {int client; int port; } ;
typedef TYPE_1__ snd_seq_addr_t ;


 unsigned int SND_SEQ_PORT_TYPE_MIDI_GENERIC ;
 int snd_seq_client_info_alloca (int **) ;
 int snd_seq_client_info_get_client (int *) ;
 int snd_seq_client_info_set_client (int *,int) ;
 int snd_seq_port_info_alloca (int **) ;
 unsigned int snd_seq_port_info_get_capability (int *) ;
 char* snd_seq_port_info_get_name (int *) ;
 int snd_seq_port_info_get_port (int *) ;
 unsigned int snd_seq_port_info_get_type (int *) ;
 int snd_seq_port_info_set_client (int *,int) ;
 int snd_seq_port_info_set_port (int *,int) ;
 scalar_t__ snd_seq_query_next_client (int *,int *) ;
 scalar_t__ snd_seq_query_next_port (int *,int *) ;
 scalar_t__ string_is_equal (char const*,char const*) ;

__attribute__((used)) static bool alsa_midi_get_port(snd_seq_t *seq, const char *name, unsigned caps,
      snd_seq_addr_t *addr)
{
   snd_seq_client_info_t *client_info;
   snd_seq_port_info_t *port_info;

   snd_seq_client_info_alloca(&client_info);
   snd_seq_port_info_alloca(&port_info);

   snd_seq_client_info_set_client(client_info, -1);
   while (snd_seq_query_next_client(seq, client_info) == 0)
   {
      int client_id = snd_seq_client_info_get_client(client_info);

      snd_seq_port_info_set_client(port_info, client_id);
      snd_seq_port_info_set_port(port_info, -1);

      while (snd_seq_query_next_port(seq, port_info) == 0)
      {
         unsigned port_caps = snd_seq_port_info_get_capability(port_info);
         unsigned type = snd_seq_port_info_get_type(port_info);

         if ((type & SND_SEQ_PORT_TYPE_MIDI_GENERIC) && (port_caps & caps) == caps)
         {
            const char *port_name = snd_seq_port_info_get_name(port_info);

            if (string_is_equal(port_name, name))
            {
               addr->client = client_id;
               addr->port = snd_seq_port_info_get_port(port_info);

               return 1;
            }
         }
      }
   }

   return 0;
}
