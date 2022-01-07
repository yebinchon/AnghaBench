
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint64_t ;
typedef int params ;
typedef int ccv_mser_param_t ;
typedef int ccv_mser_keypoint_t ;
struct TYPE_18__ {int type; int cols; int rows; int sig; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;
typedef int ccv_array_t ;


 int CCV_32F ;
 int CCV_32S ;
 int CCV_64F ;
 int CCV_8U ;
 int CCV_ALL_DATA_TYPE ;
 int CCV_C1 ;
 int CCV_EOF_SIGN ;
 int CCV_GET_CHANNEL (int) ;
 int CCV_GET_DATA_TYPE (int) ;
 int _ccv_linear_mser (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *,int ) ;
 int _ccv_mscr (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *,int ) ;
 int _ccv_set_union_mser (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *,int ) ;
 int bsig ;
 int * ccv_array_new (int,int,int ) ;
 int ccv_cache_generate_signature (char const*,int,int ) ;
 int ccv_declare_derived_signature_case (int ,int ,int ,int ) ;
 TYPE_1__* ccv_dense_matrix_renew (TYPE_1__*,int ,int ,int,int,int ) ;
 int ccv_object_return_if_cached (int *,TYPE_1__*,int *) ;
 int ccv_revive_object_if_cached (TYPE_1__*,int *) ;
 int ccv_sign_if (int,int ,int ,int ,...) ;
 int ccv_sign_with_literal (char*) ;
 int rsig ;

ccv_array_t* ccv_mser(ccv_dense_matrix_t* a, ccv_dense_matrix_t* h, ccv_dense_matrix_t** b, int type, ccv_mser_param_t params)
{
 uint64_t psig = ccv_cache_generate_signature((const char*)&params, sizeof(params), CCV_EOF_SIGN);
 ccv_declare_derived_signature_case(bsig, ccv_sign_with_literal("ccv_mser(matrix)"), ccv_sign_if(h == 0 && a->sig != 0, psig, a->sig, CCV_EOF_SIGN), ccv_sign_if(h != 0 && a->sig != 0 && h->sig != 0, psig, a->sig, h->sig, CCV_EOF_SIGN));
 ccv_declare_derived_signature_case(rsig, ccv_sign_with_literal("ccv_mser(array)"), ccv_sign_if(h == 0 && a->sig != 0, psig, a->sig, CCV_EOF_SIGN), ccv_sign_if(h != 0 && a->sig != 0 && h->sig != 0, psig, a->sig, h->sig, CCV_EOF_SIGN));
 type = (type == 0) ? CCV_32S | CCV_C1 : CCV_GET_DATA_TYPE(type) | CCV_C1;
 ccv_dense_matrix_t* db = *b = ccv_dense_matrix_renew(*b, a->rows, a->cols, CCV_C1 | CCV_ALL_DATA_TYPE, type, bsig);
 ccv_array_t* seq = ccv_array_new(sizeof(ccv_mser_keypoint_t), 64, rsig);
 ccv_object_return_if_cached(seq, db, seq);
 ccv_revive_object_if_cached(db, seq);

 if (CCV_GET_CHANNEL(a->type) > 1 || CCV_GET_DATA_TYPE(a->type) == CCV_32F || CCV_GET_DATA_TYPE(a->type) == CCV_64F)
  _ccv_mscr(a, h, db, seq, params);
 else if (CCV_GET_DATA_TYPE(a->type) == CCV_8U)
  _ccv_linear_mser(a, h, db, seq, params);
 else
  _ccv_set_union_mser(a, h, db, seq, params);
 return seq;
}
