
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int network_mysqld_type_t ;
typedef int guint8 ;


 scalar_t__ network_mysqld_proto_get_int8 (int *,int *) ;
 scalar_t__ network_mysqld_type_set_double (int *,double) ;

__attribute__((used)) static int network_mysqld_proto_binary_get_float_type(network_packet *packet, network_mysqld_type_t *type) {
 int err = 0;
 union {
  float f;
  guint8 f_char_shadow[sizeof(float)];
 } float_copy;
 unsigned long i;
 double d;
 for (i = 0; 0 == err && i < sizeof(float); i++) {
  err = err || network_mysqld_proto_get_int8(packet, &(float_copy.f_char_shadow[i]));
 }


 d = float_copy.f;

 err = err || network_mysqld_type_set_double(type, d);

 return err ? -1 : 0;
}
