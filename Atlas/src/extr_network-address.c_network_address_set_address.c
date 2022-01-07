
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_address ;
typedef int guint ;
typedef int gint ;
typedef char gchar ;


 int G_STRLOC ;
 int g_critical (char*,int ,char const*,...) ;
 int g_free (char*) ;
 int g_return_val_if_fail (int *,int) ;
 char* g_strndup (char const*,int) ;
 int network_address_set_address_ip (int *,char const*,int) ;
 int network_address_set_address_un (int *,char const*) ;
 char* strchr (char const*,char) ;
 int strtoul (char*,char**,int) ;

gint network_address_set_address(network_address *addr, const gchar *address) {
 gchar *s;

 g_return_val_if_fail(addr, -1);


 if (address[0] == '/')
  return network_address_set_address_un(addr, address);

 if (((void*)0) != (s = strchr(address, ':'))) {
  gint ret;
  char *ip_address = g_strndup(address, s - address);
  char *port_err = ((void*)0);

  guint port = strtoul(s + 1, &port_err, 10);

  if (*(s + 1) == '\0') {
   g_critical("%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. No port number",
     G_STRLOC, address);
   ret = -1;
  } else if (*port_err != '\0') {
   g_critical("%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. Failed to parse the port at '%s'",
     G_STRLOC, address, port_err);
   ret = -1;
  } else {
   ret = network_address_set_address_ip(addr, ip_address, port);
  }

  if (ip_address) g_free(ip_address);

  return ret;
 }

 return network_address_set_address_ip(addr, address, 3306);
}
