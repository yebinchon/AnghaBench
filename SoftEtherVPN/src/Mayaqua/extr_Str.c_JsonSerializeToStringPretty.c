
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int JSON_VALUE ;


 scalar_t__ JSON_RET_ERROR ;
 int JsonFreeString (char*) ;
 scalar_t__ JsonGetSerializationSizePretty (int *) ;
 scalar_t__ JsonSerializeToBufferPretty (int *,char*,scalar_t__) ;
 scalar_t__ parson_malloc (scalar_t__) ;

char * JsonSerializeToStringPretty(JSON_VALUE *value) {
 UINT serialization_result = JSON_RET_ERROR;
 UINT buf_size_bytes = JsonGetSerializationSizePretty(value);
 char *buf = ((void*)0);
 if (buf_size_bytes == 0) {
  return ((void*)0);
 }
 buf = (char*)parson_malloc(buf_size_bytes);
 if (buf == ((void*)0)) {
  return ((void*)0);
 }
 serialization_result = JsonSerializeToBufferPretty(value, buf, buf_size_bytes);
 if (serialization_result == JSON_RET_ERROR) {
  JsonFreeString(buf);
  return ((void*)0);
 }
 return buf;
}
