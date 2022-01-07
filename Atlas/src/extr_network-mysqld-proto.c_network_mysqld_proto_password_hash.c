
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int guchar ;
typedef int gsize ;
struct TYPE_4__ {int len; scalar_t__ str; int allocated_len; } ;
typedef TYPE_1__ GString ;
typedef int GChecksum ;


 int G_CHECKSUM_SHA1 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int *,int *) ;
 int * g_checksum_new (int ) ;
 int g_checksum_type_get_length (int ) ;
 int g_checksum_update (int *,int *,int ) ;
 int g_string_set_size (TYPE_1__*,int ) ;

int network_mysqld_proto_password_hash(GString *response, const char *password, gsize password_len) {
 GChecksum *cs;


 cs = g_checksum_new(G_CHECKSUM_SHA1);

 g_checksum_update(cs, (guchar *)password, password_len);

 g_string_set_size(response, g_checksum_type_get_length(G_CHECKSUM_SHA1));
 response->len = response->allocated_len;
 g_checksum_get_digest(cs, (guchar *)response->str, &(response->len));

 g_checksum_free(cs);

 return 0;
}
