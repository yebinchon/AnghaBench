
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t iv_index_t ;
typedef TYPE_1__* ipc_voucher_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ iv_table_size; size_t* iv_table; } ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline iv_index_t
iv_checksum(ipc_voucher_t voucher, boolean_t *emptyp)
{
 iv_index_t c = 0;

 boolean_t empty = TRUE;
 if (0 < voucher->iv_table_size) {
  iv_index_t i = voucher->iv_table_size - 1;

  do {
   iv_index_t v = voucher->iv_table[i];
   c = c << 3 | c >> (32 - 3);
   c = ~c;
   if (0 < v) {
    c += v;
    empty = FALSE;
   }
  } while (0 < i--);
 }
 *emptyp = empty;
 return c;
}
