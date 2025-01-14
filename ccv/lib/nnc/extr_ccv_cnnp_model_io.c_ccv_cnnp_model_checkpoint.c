
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_14__ {int d; } ;
typedef TYPE_4__ ccv_nnc_tensor_symbol_t ;
struct TYPE_15__ {int graph; TYPE_6__* compiled_data; } ;
typedef TYPE_5__ ccv_cnnp_model_t ;
struct TYPE_13__ {int * retainables; int * trainables; } ;
struct TYPE_12__ {TYPE_9__* retainables; TYPE_9__* trainables; } ;
struct TYPE_11__ {unsigned int* v; } ;
struct TYPE_16__ {TYPE_3__ tensors; TYPE_2__ ids; TYPE_1__ tensors_init; TYPE_9__* retainables; TYPE_9__* trainables; int parallel_count; } ;
typedef TYPE_6__ ccv_cnnp_compiled_data_t ;
struct TYPE_17__ {int rnum; } ;


 int const CCV_CNNP_MODEL_CHECKPOINT_READ_ONLY ;
 scalar_t__ CCV_IO_FINAL ;
 int SQLITE_ENFORCE (int) ;
 scalar_t__ SQLITE_OK ;
 int assert (TYPE_6__* const) ;
 scalar_t__ ccv_array_get (TYPE_9__*,int) ;
 int ccv_cnnp_model_tensors_init (int ,TYPE_6__* const) ;
 int ccv_max (int ,int) ;
 scalar_t__ ccv_nnc_tensor_read (int *,char const* const,int *) ;
 int ccv_nnc_tensor_write (int ,int *,char const* const) ;
 int snprintf (char*,int,char*,char const* const,int) ;
 int sqlite3_close (int *) ;
 scalar_t__ sqlite3_exec (int *,char*,int ,int ,int ) ;
 scalar_t__ sqlite3_open (char const* const,int **) ;

void ccv_cnnp_model_checkpoint(ccv_cnnp_model_t* const model, const char* const fn, const int flags)
{
 ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
 assert(compiled_data);
 sqlite3* conn = 0;
 if (SQLITE_OK != sqlite3_open(fn, &conn))
  return;
 const int tensors_init = !!compiled_data->tensors_init.v;
 int i, j;
 const int parallel_count = ccv_max(compiled_data->parallel_count, 1);
 const int trainable_size = compiled_data->trainables->rnum;
 const int retainable_size = compiled_data->retainables->rnum;
 char retainable_name[1024 + 16];
 if (!tensors_init || flags == CCV_CNNP_MODEL_CHECKPOINT_READ_ONLY)
 {
  if (!tensors_init)
   ccv_cnnp_model_tensors_init(model->graph, compiled_data);
  for (i = 0; i < trainable_size; i++)
  {
   const char* const id = *(char**)ccv_array_get(compiled_data->ids.trainables, i);
   if (ccv_nnc_tensor_read(conn, id, compiled_data->tensors.trainables + i) == CCV_IO_FINAL)
   {
    const int d = ((ccv_nnc_tensor_symbol_t*)ccv_array_get(compiled_data->trainables, i))->d;
    compiled_data->tensors_init.v[d >> 5] |= (1u << (d & 0x1f));
   }
  }
  for (i = 0; i < parallel_count; i++)
   for (j = 0; j < retainable_size; j++)
   {
    const char* const id = *(char**)ccv_array_get(compiled_data->ids.retainables, j);
    snprintf(retainable_name, 1024 + 16, "%s(%d)", id, i);
    if (ccv_nnc_tensor_read(conn, retainable_name, compiled_data->tensors.retainables + i * retainable_size + j) == CCV_IO_FINAL)
    {
     const int d = ((ccv_nnc_tensor_symbol_t*)ccv_array_get(compiled_data->retainables, i))->d;
     compiled_data->tensors_init.v[d >> 5] |= (1u << (d & 0x1f));
    }
   }
  sqlite3_close(conn);
  return;
 }
 SQLITE_ENFORCE(SQLITE_OK == sqlite3_exec(conn, "BEGIN", 0, 0, 0));
 for (i = 0; i < trainable_size; i++)
 {
  const char* const id = *(char**)ccv_array_get(compiled_data->ids.trainables, i);
  ccv_nnc_tensor_write(compiled_data->tensors.trainables[i], conn, id);
 }
 for (i = 0; i < parallel_count; i++)
  for (j = 0; j < retainable_size; j++)
  {
   const char* const id = *(char**)ccv_array_get(compiled_data->ids.retainables, j);
   snprintf(retainable_name, 1024 + 16, "%s(%d)", id, i);
   ccv_nnc_tensor_write(compiled_data->tensors.retainables[i * retainable_size + j], conn, retainable_name);
  }
 SQLITE_ENFORCE(SQLITE_OK == sqlite3_exec(conn, "COMMIT", 0, 0, 0));
 sqlite3_close(conn);
}
