
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int kcdata_iter_t ;


 scalar_t__ KCDATA_DESC_MAXLEN ;
 scalar_t__ kcdata_iter_payload (int ) ;
 scalar_t__ kcdata_iter_size (int ) ;

__attribute__((used)) static inline void kcdata_iter_get_data_with_desc(kcdata_iter_t iter, char **desc_ptr, void **data_ptr, uint32_t *size_ptr) {
 if (desc_ptr)
  *desc_ptr = (char *)kcdata_iter_payload(iter);
 if (data_ptr)
  *data_ptr = (void *)((uintptr_t)kcdata_iter_payload(iter) + KCDATA_DESC_MAXLEN);
 if (size_ptr)
  *size_ptr = kcdata_iter_size(iter) - KCDATA_DESC_MAXLEN;
}
