
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_frm ;
struct TYPE_12__ {int len; int str; } ;
struct TYPE_11__ {int message; } ;
typedef int GMappedFile ;
typedef TYPE_2__ GError ;


 int FALSE ;
 int G_STRLOC ;
 int g_critical (char*,int ,int ) ;
 int g_error_free (TYPE_2__*) ;
 int g_mapped_file_free (int *) ;
 int g_mapped_file_get_contents (int *) ;
 int g_mapped_file_get_length (int *) ;
 int * g_mapped_file_new (char const*,int ,TYPE_2__**) ;
 int g_string_free (TYPE_6__*,int ) ;
 TYPE_6__* g_string_new (int *) ;
 int * network_mysqld_frm_new () ;
 int network_mysqld_frm_print (int *) ;
 int network_mysqld_myd_print (int *,char const*) ;
 scalar_t__ network_mysqld_proto_get_frm (TYPE_1__*,int *) ;
 int network_packet_free (TYPE_1__*) ;
 TYPE_1__* network_packet_new () ;

int frm_dump_file(
  const char *filename,
  const char *myd_filename) {
 network_packet *packet;
 GMappedFile *f;
 GError *gerr = ((void*)0);
 network_mysqld_frm *frm;
 int err = 0;

 f = g_mapped_file_new(filename, FALSE, &gerr);
 if (!f) {
  g_critical("%s: %s",
    G_STRLOC,
    gerr->message);
  g_error_free(gerr);
  return -1;
 }

 packet = network_packet_new();
 packet->data = g_string_new(((void*)0));

 packet->data->str = g_mapped_file_get_contents(f);
 packet->data->len = g_mapped_file_get_length(f);

 frm = network_mysqld_frm_new();
 err = err || network_mysqld_proto_get_frm(packet, frm);
 if (!err) {
  network_mysqld_frm_print(frm);
  network_mysqld_myd_print(frm, myd_filename);
 }

 g_mapped_file_free(f);

 g_string_free(packet->data, FALSE);
 network_packet_free(packet);

 return err ? -1 : 0;
}
