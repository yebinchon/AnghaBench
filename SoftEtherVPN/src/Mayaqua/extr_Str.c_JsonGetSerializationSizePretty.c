
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_VALUE ;


 int json_serialize_to_buffer_r (int *,int *,int ,int,char*) ;

UINT JsonGetSerializationSizePretty(JSON_VALUE *value) {
 char num_buf[1100];
 int res = json_serialize_to_buffer_r(value, ((void*)0), 0, 1, num_buf);
 return res < 0 ? 0 : (UINT)(res + 1);
}
