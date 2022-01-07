
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int kcdata_iter_t ;


 int KCDATA_DESC_MAXLEN ;
 scalar_t__ kcdata_iter_payload (int ) ;
 scalar_t__ kcdata_iter_size (int ) ;
 scalar_t__ kcdata_iter_valid (int ) ;

__attribute__((used)) static inline
int kcdata_iter_data_with_desc_valid(kcdata_iter_t iter, uint32_t minsize) {
 return
  kcdata_iter_valid(iter) &&
  kcdata_iter_size(iter) >= KCDATA_DESC_MAXLEN + minsize &&
  ((char*)kcdata_iter_payload(iter))[KCDATA_DESC_MAXLEN-1] == 0;
}
