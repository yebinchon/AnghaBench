
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tensor_select_qs ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_8__ {int u8; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_9__ {int type; TYPE_1__ data; TYPE_7__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
struct TYPE_10__ {int dim; void* datatype; void* format; void* type; } ;
typedef TYPE_3__ ccv_nnc_tensor_param_t ;


 int CCV_GARBAGE ;
 int CCV_IO_ERROR ;
 int CCV_IO_FINAL ;
 int CCV_TENSOR_CPU_MEMORY ;
 scalar_t__ CCV_TENSOR_GET_MEMORY (int ) ;
 scalar_t__ CCV_TENSOR_GPU_MEMORY ;
 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (char const* const) ;
 int ccv_min (size_t,int ) ;
 size_t ccv_nnc_tensor_data_size (TYPE_7__) ;
 TYPE_2__* ccv_nnc_tensor_new (int ,TYPE_3__,int ) ;
 int cumemcpy (int ,int ,void const* const,int ,int ) ;
 int memcpy (int ,void const* const,int ) ;
 int sqlite3_bind_text (int *,int,char const* const,int,int ) ;
 int sqlite3_clear_bindings (int *) ;
 void* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 void* sqlite3_column_int (int *,int) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

int ccv_nnc_tensor_read(void* const handle, const char* const name, ccv_nnc_tensor_t** const tensor_out)
{
 assert(name);
 sqlite3* conn = (sqlite3*)handle;
 if (!conn)
  return CCV_IO_ERROR;
 const char tensor_select_qs[] =
  "SELECT data, type, format, datatype, dim FROM tensors WHERE name=$name";
 sqlite3_stmt* tensor_select_stmt = 0;
 if (SQLITE_OK != sqlite3_prepare_v2(conn, tensor_select_qs, sizeof(tensor_select_qs), &tensor_select_stmt, 0))
  return CCV_IO_ERROR;
 sqlite3_bind_text(tensor_select_stmt, 1, name, -1, 0);
 if (SQLITE_ROW != sqlite3_step(tensor_select_stmt))
  return CCV_IO_ERROR;
 ccv_nnc_tensor_t* tensor = *tensor_out;
 if (!tensor)
 {
  ccv_nnc_tensor_param_t info;
  info.type = sqlite3_column_int(tensor_select_stmt, 1);
  info.format = sqlite3_column_int(tensor_select_stmt, 2);
  info.datatype = sqlite3_column_int(tensor_select_stmt, 3);
  const void* const dim = sqlite3_column_blob(tensor_select_stmt, 4);
  memcpy(info.dim, dim, ccv_min(sizeof(info.dim), sqlite3_column_bytes(tensor_select_stmt, 4)));
  *tensor_out = tensor = ccv_nnc_tensor_new(0, info, 0);
 }
 const void* const data = sqlite3_column_blob(tensor_select_stmt, 0);
 size_t data_size = ccv_nnc_tensor_data_size(tensor->info);






 memcpy(tensor->data.u8, data, ccv_min(data_size, sqlite3_column_bytes(tensor_select_stmt, 0)));

 tensor->type &= ~CCV_GARBAGE;
 sqlite3_reset(tensor_select_stmt);
 sqlite3_clear_bindings(tensor_select_stmt);
 sqlite3_finalize(tensor_select_stmt);
 return CCV_IO_FINAL;
}
