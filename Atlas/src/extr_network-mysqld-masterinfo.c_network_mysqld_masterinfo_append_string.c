
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GString ;


 int S (int *) ;
 int g_string_append_c (int *,char) ;
 int g_string_append_len (int *,int ) ;

__attribute__((used)) static int network_mysqld_masterinfo_append_string(GString *packet, GString *s) {
 g_string_append_len(packet, S(s));
 g_string_append_c(packet, '\n');

 return 0;
}
