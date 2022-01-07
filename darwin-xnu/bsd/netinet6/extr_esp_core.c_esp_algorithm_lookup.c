
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_algorithm {int dummy; } ;
 struct esp_algorithm const aes_cbc ;
 struct esp_algorithm const aes_gcm ;
 struct esp_algorithm const chacha_poly ;
 struct esp_algorithm const des3_cbc ;
 struct esp_algorithm const des_cbc ;
 struct esp_algorithm const null_esp ;

const struct esp_algorithm *
esp_algorithm_lookup(int idx)
{
 switch (idx) {
 case 132:
  return &des_cbc;
 case 133:
  return &des3_cbc;
 case 131:
  return &null_esp;
 case 128:
  return &aes_cbc;
 case 130:
  return &aes_gcm;
 case 129:
  return &chacha_poly;
 default:
  return ((void*)0);
 }
}
