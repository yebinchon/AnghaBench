
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;


 scalar_t__ JSON_RET_ERROR ;
 scalar_t__ JSON_RET_OK ;
 scalar_t__ JsonGetSerializationSizePretty (int *) ;
 int json_serialize_to_buffer_r (int *,char*,int ,int,int *) ;

UINT JsonSerializeToBufferPretty(JSON_VALUE *value, char *buf, UINT buf_size_in_bytes) {
 int written = -1;
 UINT needed_size_in_bytes = JsonGetSerializationSizePretty(value);
 if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
  return JSON_RET_ERROR;
 }
 written = json_serialize_to_buffer_r(value, buf, 0, 1, ((void*)0));
 if (written < 0) {
  return JSON_RET_ERROR;
 }
 return JSON_RET_OK;
}
