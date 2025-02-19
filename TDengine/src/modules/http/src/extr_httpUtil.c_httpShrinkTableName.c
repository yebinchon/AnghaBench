
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int * digest; } ;
typedef TYPE_1__ MD5_CTX ;
typedef int HttpContext ;


 int MD5Final (TYPE_1__*) ;
 int MD5Init (TYPE_1__*) ;
 int MD5Update (TYPE_1__*,int *,int ) ;
 int TSDB_METER_NAME_LEN ;
 int httpAddToSqlCmdBuffer (int *,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 char* httpGetCmdsString (int *,int) ;

int httpShrinkTableName(HttpContext *pContext, int pos, char *name) {
  int len = 0;
  for (int i = 0; name[i] != 0; i++) {
    if (name[i] == ' ' || name[i] == ':' || name[i] == '.' || name[i] == '-' || name[i] == '/' || name[i] == '\'' ||
        name[i] == '\"')
      name[i] = '_';
    len++;
  }

  if (len < TSDB_METER_NAME_LEN) {
    return pos;
  }

  MD5_CTX context;
  MD5Init(&context);
  MD5Update(&context, (uint8_t *)name, (uint32_t)len);
  MD5Final(&context);

  int table_name = httpAddToSqlCmdBuffer(
      pContext, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", context.digest[0],
      context.digest[1], context.digest[2], context.digest[3], context.digest[4], context.digest[5], context.digest[6],
      context.digest[7], context.digest[8], context.digest[9], context.digest[10], context.digest[11],
      context.digest[12], context.digest[13], context.digest[14], context.digest[15]);

  if (table_name != -1) {
    httpGetCmdsString(pContext, table_name)[0] = 't';
  }

  return table_name;
}
