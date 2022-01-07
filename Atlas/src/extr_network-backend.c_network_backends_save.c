
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int default_file; TYPE_6__* raw_pwds; TYPE_6__* raw_ips; int backends_mutex; TYPE_6__* backends; } ;
typedef TYPE_3__ network_backends_t ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__* addr; } ;
typedef TYPE_4__ network_backend_t ;
typedef scalar_t__ guint ;
typedef int gsize ;
typedef int gchar ;
struct TYPE_24__ {int message; } ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {scalar_t__ len; char* str; } ;
struct TYPE_19__ {TYPE_1__* name; } ;
struct TYPE_18__ {int * str; } ;
typedef TYPE_5__ GString ;
typedef TYPE_6__ GPtrArray ;
typedef int GKeyFile ;
typedef TYPE_7__ GError ;


 scalar_t__ BACKEND_TYPE_RO ;
 scalar_t__ BACKEND_TYPE_RW ;
 scalar_t__ FALSE ;
 int G_KEY_FILE_KEEP_COMMENTS ;
 int G_STRLOC ;
 int TRUE ;
 int g_critical (char*,int ,int ) ;
 int g_error_free (TYPE_7__*) ;
 scalar_t__ g_file_set_contents (int ,int *,int ,TYPE_7__**) ;
 int g_free (int *) ;
 int g_key_file_free (int *) ;
 scalar_t__ g_key_file_load_from_file (int *,int ,int ,TYPE_7__**) ;
 int * g_key_file_new () ;
 int g_key_file_set_list_separator (int *,char) ;
 int g_key_file_set_value (int *,char*,char*,char*) ;
 int * g_key_file_to_data (int *,int *,int *) ;
 int g_message (char*,int ) ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 void* g_ptr_array_index (TYPE_6__*,scalar_t__) ;
 int g_string_append (TYPE_5__*,int *) ;
 int g_string_append_c (TYPE_5__*,char) ;
 int g_string_append_printf (TYPE_5__*,char*,int *) ;
 int g_string_free (TYPE_5__*,int ) ;
 TYPE_5__* g_string_new (int *) ;

int network_backends_save(network_backends_t *bs) {
 GKeyFile *keyfile = g_key_file_new();
 g_key_file_set_list_separator(keyfile, ',');
 GError *gerr = ((void*)0);

 if (FALSE == g_key_file_load_from_file(keyfile, bs->default_file, G_KEY_FILE_KEEP_COMMENTS, &gerr)) {
  g_critical("%s: g_key_file_load_from_file: %s", G_STRLOC, gerr->message);
  g_error_free(gerr);
  g_key_file_free(keyfile);
  return -1;
 }

 GString *master = g_string_new(((void*)0));
 GString *slave = g_string_new(((void*)0));
 guint i;
 GPtrArray *backends = bs->backends;

 g_mutex_lock(bs->backends_mutex);
 guint len = backends->len;
 for (i = 0; i < len; ++i) {
  network_backend_t *backend = g_ptr_array_index(backends, i);
  if (backend->type == BACKEND_TYPE_RW) {
   g_string_append_printf(master, ",%s", backend->addr->name->str);
  } else if (backend->type == BACKEND_TYPE_RO) {
   g_string_append_printf(slave, ",%s", backend->addr->name->str);
  }
 }
 g_mutex_unlock(bs->backends_mutex);

 if (master->len != 0) {
  g_key_file_set_value(keyfile, "mysql-proxy", "proxy-backend-addresses", master->str+1);
 } else {
  g_key_file_set_value(keyfile, "mysql-proxy", "proxy-backend-addresses", "");
 }
 if (slave->len != 0) {
  g_key_file_set_value(keyfile, "mysql-proxy", "proxy-read-only-backend-addresses", slave->str+1);
 } else {
  g_key_file_set_value(keyfile, "mysql-proxy", "proxy-read-only-backend-addresses", "");
 }

 g_string_free(master, TRUE);
 g_string_free(slave, TRUE);

 GString *client_ips = g_string_new(((void*)0));
 for (i = 0; i < bs->raw_ips->len; ++i) {
  gchar *client_ip = g_ptr_array_index(bs->raw_ips, i);
  g_string_append_printf(client_ips, ",%s", client_ip);
 }
 if (client_ips->len != 0) {
  g_key_file_set_value(keyfile, "mysql-proxy", "client-ips", client_ips->str+1);
 } else {
  g_key_file_set_value(keyfile, "mysql-proxy", "client-ips", "");
 }
 g_string_free(client_ips, TRUE);

 GString *pwds = g_string_new(((void*)0));
 for (i = 0; i < bs->raw_pwds->len; ++i) {
  g_string_append_c(pwds, ',');
  gchar *user_pwd = g_ptr_array_index(bs->raw_pwds, i);
  g_string_append(pwds, user_pwd);
 }
 if (pwds->len != 0) {
  g_key_file_set_value(keyfile, "mysql-proxy", "pwds", pwds->str+1);
 } else {
  g_key_file_set_value(keyfile, "mysql-proxy", "pwds", "");
 }
 g_string_free(pwds, TRUE);

 gsize file_size = 0;
 gchar *file_buf = g_key_file_to_data(keyfile, &file_size, ((void*)0));
 if (FALSE == g_file_set_contents(bs->default_file, file_buf, file_size, &gerr)) {
  g_critical("%s: g_file_set_contents: %s", G_STRLOC, gerr->message);
  g_free(file_buf);
  g_error_free(gerr);
  g_key_file_free(keyfile);
  return -1;
 }

 g_message("%s: saving config file succeed", G_STRLOC);
 g_free(file_buf);
 g_key_file_free(keyfile);
 return 0;
}
