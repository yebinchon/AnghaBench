
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;


 int APPEND_INDENT (int) ;
 int APPEND_STRING (char*) ;
 int Copy (char*,char*,int) ;







 int * JsonArrayGet (int *,int ) ;
 int JsonArrayGetCount (int *) ;
 int * JsonGet (int *,char*) ;
 int JsonGetCount (int *) ;
 char* JsonGetName (int *,int ) ;
 int * JsonValueGetArray (int *) ;
 int JsonValueGetBool (int *) ;
 int JsonValueGetNumber (int *) ;
 int * JsonValueGetObject (int *) ;
 char* JsonValueGetStr (int *) ;
 int JsonValueGetType (int *) ;
 int StrLen (char*) ;
 int ToStr64 (char*,int ) ;
 int json_serialize_string (char*,char*) ;

__attribute__((used)) static int json_serialize_to_buffer_r(JSON_VALUE *value, char *buf, int level, int is_pretty, char *num_buf)
{
 char *key = ((void*)0), *string = ((void*)0);
 JSON_VALUE *temp_value = ((void*)0);
 JSON_ARRAY *array = ((void*)0);
 JSON_OBJECT *object = ((void*)0);
 UINT i = 0, count = 0;
 UINT64 num = 0;
 int written = -1, written_total = 0;
 char tmp[32];

 switch (JsonValueGetType(value)) {
 case 134:
  array = JsonValueGetArray(value);
  count = JsonArrayGetCount(array);
  APPEND_STRING("[");
  if (count > 0 && is_pretty) {
   APPEND_STRING("\n");
  }
  for (i = 0; i < count; i++) {
   if (is_pretty) {
    APPEND_INDENT(level + 1);
   }
   temp_value = JsonArrayGet(array, i);
   written = json_serialize_to_buffer_r(temp_value, buf, level + 1, is_pretty, num_buf);
   if (written < 0) {
    return -1;
   }
   if (buf != ((void*)0)) {
    buf += written;
   }
   written_total += written;
   if (i < (count - 1)) {
    APPEND_STRING(",");
   }
   if (is_pretty) {
    APPEND_STRING("\n");
   }
  }
  if (count > 0 && is_pretty) {
   APPEND_INDENT(level);
  }
  APPEND_STRING("]");
  return written_total;
 case 129:
  object = JsonValueGetObject(value);
  count = JsonGetCount(object);
  APPEND_STRING("{");
  if (count > 0 && is_pretty) {
   APPEND_STRING("\n");
  }
  for (i = 0; i < count; i++) {
   key = JsonGetName(object, i);
   if (key == ((void*)0)) {
    return -1;
   }
   if (is_pretty) {
    APPEND_INDENT(level + 1);
   }
   written = json_serialize_string(key, buf);
   if (written < 0) {
    return -1;
   }
   if (buf != ((void*)0)) {
    buf += written;
   }
   written_total += written;
   APPEND_STRING(":");
   if (is_pretty) {
    APPEND_STRING(" ");
   }
   temp_value = JsonGet(object, key);
   written = json_serialize_to_buffer_r(temp_value, buf, level + 1, is_pretty, num_buf);
   if (written < 0) {
    return -1;
   }
   if (buf != ((void*)0)) {
    buf += written;
   }
   written_total += written;
   if (i < (count - 1)) {
    APPEND_STRING(",");
   }
   if (is_pretty) {
    APPEND_STRING("\n");
   }
  }
  if (count > 0 && is_pretty) {
   APPEND_INDENT(level);
  }
  APPEND_STRING("}");
  return written_total;
 case 128:
  string = JsonValueGetStr(value);
  if (string == ((void*)0)) {
   return -1;
  }
  written = json_serialize_string(string, buf);
  if (written < 0) {
   return -1;
  }
  if (buf != ((void*)0)) {
   buf += written;
  }
  written_total += written;
  return written_total;
 case 133:
  if (JsonValueGetBool(value)) {
   APPEND_STRING("true");
  }
  else {
   APPEND_STRING("false");
  }
  return written_total;
 case 130:
  num = JsonValueGetNumber(value);
  if (buf != ((void*)0)) {
   num_buf = buf;
  }
  ToStr64(tmp, num);
  Copy(num_buf, tmp, StrLen(tmp));
  written = StrLen(tmp);
  if (buf != ((void*)0)) {
   buf += written;
  }
  written_total += written;
  return written_total;
 case 131:
  APPEND_STRING("null");
  return written_total;
 case 132:
  return -1;
 default:
  return -1;
 }
}
