
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kcdata_iter_t ;


 scalar_t__ kcdata_iter_payload (int ) ;

__attribute__((used)) static inline
uint32_t kcdata_iter_container_type(kcdata_iter_t iter) {
 return * (uint32_t *) kcdata_iter_payload(iter);
}
