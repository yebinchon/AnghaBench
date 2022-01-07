
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_t ;
typedef int guint8 ;
typedef int GString ;


 scalar_t__ network_mysqld_proto_append_int8 (int *,int ) ;
 scalar_t__ network_mysqld_type_get_double (int *,double*) ;

__attribute__((used)) static int network_mysqld_proto_binary_append_float_type(GString *packet, network_mysqld_type_t *type) {
 union {
  float f;
  guint8 f_char_shadow[sizeof(float)];
 } float_copy;
 double d;
 int err = 0;
 unsigned long i;

 err = err || network_mysqld_type_get_double(type, &d);
 if (0 != err) return -1;

 float_copy.f = d;
 for (i = 0; 0 == err && i < sizeof(float); i++) {
  err = err || network_mysqld_proto_append_int8(packet, float_copy.f_char_shadow[i]);
 }


 return err ? -1 : 0;
}
