
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int network_packet ;
typedef int guint32 ;
struct TYPE_5__ {int str; } ;
typedef TYPE_1__ GString ;


 int TRUE ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (int *) ;
 scalar_t__ network_mysqld_masterinfo_get_string (int *,TYPE_1__*) ;
 int strtoul (int ,char**,int ) ;

__attribute__((used)) static int network_mysqld_masterinfo_get_int32(network_packet *packet, guint32 *_i) {
 GString *s;
 int err = 0;

 s = g_string_new(((void*)0));
 err = err || network_mysqld_masterinfo_get_string(packet, s);
 if (!err) {
  char *errptr;
  guint32 i;

  i = strtoul(s->str, &errptr, 0);

  err = err || (*errptr != '\0');

  if (!err) *_i = i;
 }

 g_string_free(s, TRUE);

 return err ? -1 : 0;
}
