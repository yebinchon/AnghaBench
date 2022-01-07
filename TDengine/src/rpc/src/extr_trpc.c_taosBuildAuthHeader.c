
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int digest; } ;
typedef TYPE_1__ MD5_CTX ;


 int MD5Final (TYPE_1__*) ;
 int MD5Init (TYPE_1__*) ;
 int MD5Update (TYPE_1__*,int *,int) ;
 int TSDB_KEY_LEN ;
 int memcpy (int *,int ,int) ;

int taosBuildAuthHeader(uint8_t *pMsg, int msgLen, uint8_t *pAuth, uint8_t *pKey) {
  MD5_CTX context;

  MD5Init(&context);
  MD5Update(&context, pKey, TSDB_KEY_LEN);
  MD5Update(&context, (uint8_t *)pMsg, msgLen);
  MD5Update(&context, pKey, TSDB_KEY_LEN);
  MD5Final(&context);

  memcpy(pAuth, context.digest, sizeof(context.digest));

  return 0;
}
