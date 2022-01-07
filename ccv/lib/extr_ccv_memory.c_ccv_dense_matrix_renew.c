
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int rows; int cols; int type; scalar_t__ sig; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;


 int CCV_EOF_SIGN ;
 int CCV_GET_CHANNEL (int) ;
 int CCV_GET_DATA_TYPE (int) ;
 int assert (int) ;
 scalar_t__ ccv_cache_generate_signature (char const*,int,scalar_t__,int ) ;
 TYPE_1__* ccv_dense_matrix_new (int,int,int,int ,scalar_t__) ;

ccv_dense_matrix_t* ccv_dense_matrix_renew(ccv_dense_matrix_t* x, int rows, int cols, int types, int prefer_type, uint64_t sig)
{
 if (x != 0)
 {
  assert(x->rows == rows && x->cols == cols && (CCV_GET_DATA_TYPE(x->type) & types) && (CCV_GET_CHANNEL(x->type) == CCV_GET_CHANNEL(types)));
  prefer_type = CCV_GET_DATA_TYPE(x->type) | CCV_GET_CHANNEL(x->type);
 }
 if (sig != 0)
  sig = ccv_cache_generate_signature((const char*)&prefer_type, sizeof(int), sig, CCV_EOF_SIGN);
 if (x == 0)
 {
  x = ccv_dense_matrix_new(rows, cols, prefer_type, 0, sig);
 } else {
  x->sig = sig;
 }
 return x;
}
