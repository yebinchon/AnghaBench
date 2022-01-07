
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_variant_t ;





 int not_reached () ;

__attribute__((used)) static const char *
hash_variant_string(hash_variant_t variant)
{

 switch (variant) {
 case 128: return ("hash_x86_32");
 case 129: return ("hash_x86_128");
 case 130: return ("hash_x64_128");
 default: not_reached();
 }
}
