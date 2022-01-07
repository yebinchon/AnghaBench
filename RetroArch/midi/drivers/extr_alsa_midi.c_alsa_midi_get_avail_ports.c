
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {int member_0; } ;
struct string_list {int dummy; } ;
typedef int snd_seq_t ;
typedef int snd_seq_port_info_t ;
typedef int snd_seq_client_info_t ;


 int RARCH_ERR (char*,...) ;
 int SND_SEQ_NONBLOCK ;
 int SND_SEQ_OPEN_DUPLEX ;
 unsigned int SND_SEQ_PORT_TYPE_MIDI_GENERIC ;
 int snd_seq_client_info_alloca (int **) ;
 int snd_seq_client_info_get_client (int *) ;
 int snd_seq_client_info_set_client (int *,int) ;
 int snd_seq_close (int *) ;
 int snd_seq_open (int **,char*,int ,int ) ;
 int snd_seq_port_info_alloca (int **) ;
 unsigned int snd_seq_port_info_get_capability (int *) ;
 char* snd_seq_port_info_get_name (int *) ;
 unsigned int snd_seq_port_info_get_type (int *) ;
 int snd_seq_port_info_set_client (int *,int) ;
 int snd_seq_port_info_set_port (int *,int) ;
 scalar_t__ snd_seq_query_next_client (int *,int *) ;
 scalar_t__ snd_seq_query_next_port (int *,int *) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;

__attribute__((used)) static bool alsa_midi_get_avail_ports(struct string_list *ports, unsigned caps)
{
   int r;
   snd_seq_t *seq;
   snd_seq_client_info_t *client_info;
   snd_seq_port_info_t *port_info;
   union string_list_elem_attr attr = {0};

   snd_seq_client_info_alloca(&client_info);
   snd_seq_port_info_alloca(&port_info);

   r = snd_seq_open(&seq, "default", SND_SEQ_OPEN_DUPLEX, SND_SEQ_NONBLOCK);
   if (r < 0)
   {
      RARCH_ERR("[MIDI]: snd_seq_open failed with error %d.\n", r);
      return 0;
   }

   snd_seq_client_info_set_client(client_info, -1);

   while (snd_seq_query_next_client(seq, client_info) == 0)
   {
      int client = snd_seq_client_info_get_client(client_info);

      snd_seq_port_info_set_client(port_info, client);
      snd_seq_port_info_set_port(port_info, -1);

      while (snd_seq_query_next_port(seq, port_info) == 0)
      {
         unsigned port_caps = snd_seq_port_info_get_capability(port_info);
         unsigned port_type = snd_seq_port_info_get_type(port_info);

         if ((port_type & SND_SEQ_PORT_TYPE_MIDI_GENERIC) &&
               (port_caps & caps) == caps)
         {
            const char *port_name = snd_seq_port_info_get_name(port_info);

            if (!string_list_append(ports, port_name, attr))
            {
               RARCH_ERR("[MIDI]: string_list_append failed.\n");
               snd_seq_close(seq);

               return 0;
            }
         }
      }
   }

   snd_seq_close(seq);

   return 1;
}
