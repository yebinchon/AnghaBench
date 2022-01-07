
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_3__ {int capabilities; int charset; int server_status; int server_version; int challenge; int * server_version_str; int thread_id; } ;
typedef TYPE_1__ network_mysqld_auth_challenge ;
typedef int guint8 ;
typedef int gchar ;


 int CLIENT_SECURE_CONNECTION ;
 int G_STRLOC ;
 int g_critical (char*,int ) ;
 int g_debug (char*,int ,int) ;
 int g_free (int *) ;
 int g_string_append_len (int ,int *,int) ;
 int g_string_truncate (int ,int ) ;
 scalar_t__ network_mysqld_proto_get_int16 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_string (int *,int **) ;
 scalar_t__ network_mysqld_proto_get_string_len (int *,int **,int) ;
 scalar_t__ network_mysqld_proto_skip (int *,int) ;
 int sscanf (int *,char*,int*,int*,int*) ;

int network_mysqld_proto_get_auth_challenge(network_packet *packet, network_mysqld_auth_challenge *shake) {
 int maj, min, patch;
 gchar *scramble_1 = ((void*)0), *scramble_2 = ((void*)0);
 guint8 status;
 int err = 0;

 err = err || network_mysqld_proto_get_int8(packet, &status);

 if (err) return -1;

 switch (status) {
 case 0xff:
  return -1;
 case 0x0a:
  break;
 default:
  g_debug("%s: unknown protocol %d",
    G_STRLOC,
    status
    );
  return -1;
 }

 err = err || network_mysqld_proto_get_string(packet, &shake->server_version_str);
 err = err || (((void*)0) == shake->server_version_str);

 err = err || network_mysqld_proto_get_int32(packet, &shake->thread_id);






 err = err || network_mysqld_proto_get_string_len(packet, &scramble_1, 8);

 err = err || network_mysqld_proto_skip(packet, 1);

 err = err || network_mysqld_proto_get_int16(packet, &shake->capabilities);
 err = err || network_mysqld_proto_get_int8(packet, &shake->charset);
 err = err || network_mysqld_proto_get_int16(packet, &shake->server_status);

 err = err || network_mysqld_proto_skip(packet, 13);

 if (shake->capabilities & CLIENT_SECURE_CONNECTION) {
  err = err || network_mysqld_proto_get_string_len(packet, &scramble_2, 12);
  err = err || network_mysqld_proto_skip(packet, 1);
 }

 if (!err) {


  if (3 != sscanf(shake->server_version_str, "%d.%d.%d%*s", &maj, &min, &patch)) {


   g_critical("%s: protocol 10, but version number not parsable", G_STRLOC);

   return -1;
  }




  if (min < 0 || min > 100 ||
      patch < 0 || patch > 100 ||
      maj < 0 || maj > 10) {
   g_critical("%s: protocol 10, but version number out of range", G_STRLOC);

   return -1;
  }

  shake->server_version =
   maj * 10000 +
   min * 100 +
   patch;
  g_string_truncate(shake->challenge, 0);
  g_string_append_len(shake->challenge, scramble_1, 8);
  if (scramble_2) g_string_append_len(shake->challenge, scramble_2, 12);
 }

 if (scramble_1) g_free(scramble_1);
 if (scramble_2) g_free(scramble_2);

 return err ? -1 : 0;
}
