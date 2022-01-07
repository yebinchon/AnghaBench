
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* client; TYPE_1__* server; TYPE_4__* charset_connection; TYPE_4__* charset_results; TYPE_4__* charset_client; } ;
typedef TYPE_3__ network_mysqld_con ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_8__ {int charset_connection; int charset_results; int charset_client; } ;
struct TYPE_7__ {int charset_connection; int charset_results; int charset_client; } ;
typedef TYPE_4__ GString ;


 int S (TYPE_4__*) ;
 int g_string_assign_len (int ,int ) ;

void update_charset(network_mysqld_con* con) {
 GString* charset_client = con->charset_client;
 GString* charset_results = con->charset_results;
 GString* charset_connection = con->charset_connection;

 if (charset_client->len > 0) {
  if (con->server) g_string_assign_len(con->server->charset_client, S(charset_client));
  g_string_assign_len(con->client->charset_client, S(charset_client));
 }

 if (charset_results->len > 0) {
  if (con->server) g_string_assign_len(con->server->charset_results, S(charset_results));
  g_string_assign_len(con->client->charset_results, S(charset_results));
 }

 if (charset_connection->len > 0) {
  if (con->server) g_string_assign_len(con->server->charset_connection, S(charset_connection));
  g_string_assign_len(con->client->charset_connection, S(charset_connection));
 }
}
