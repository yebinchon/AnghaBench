
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_t ;
typedef int guint8 ;
typedef int GString ;


 scalar_t__ network_mysqld_proto_append_int8 (int *,int ) ;
 scalar_t__ network_mysqld_type_get_double (int *,double*) ;

__attribute__((used)) static int network_mysqld_proto_binary_append_double_type(GString *packet, network_mysqld_type_t *type) {
 union {
  double d;
  guint8 d_char_shadow[sizeof(double)];
 } double_copy;
 int err = 0;
 unsigned long i;

 err = err || network_mysqld_type_get_double(type, &double_copy.d);
 if (0 != err) return -1;
 for (i = 0; 0 == err && i < sizeof(double); i++) {
  err = err || network_mysqld_proto_append_int8(packet, double_copy.d_char_shadow[i]);
 }


 return err ? -1 : 0;
}
