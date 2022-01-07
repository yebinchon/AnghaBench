
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int pass; } ;
typedef TYPE_1__ SUserObj ;


 int TSDB_CODE_INVALID_USER ;
 int TSDB_KEY_LEN ;
 int memcpy (scalar_t__*,int ,int ) ;
 TYPE_1__* mgmtGetUser (char*) ;

int mgmtRetriveUserAuthInfo(char *user, char *spi, char *encrypt, uint8_t *secret, uint8_t *ckey) {
  SUserObj *pUser = ((void*)0);

  *spi = 0;
  *encrypt = 0;
  secret[0] = 0;
  ckey[0] = 0;

  pUser = mgmtGetUser(user);
  if (pUser == ((void*)0)) return TSDB_CODE_INVALID_USER;

  *spi = 1;
  *encrypt = 0;
  memcpy(secret, pUser->pass, TSDB_KEY_LEN);

  return 0;
}
