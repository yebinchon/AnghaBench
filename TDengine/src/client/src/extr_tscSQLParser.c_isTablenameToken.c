
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n; int z; int member_0; } ;
typedef TYPE_1__ SSQLToken ;


 int TSQL_TBNAME_L ;
 int extractTableNameFromToken (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncasecmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool isTablenameToken(SSQLToken* token) {
  SSQLToken tmpToken = *token;
  SSQLToken tableToken = {0};

  extractTableNameFromToken(&tmpToken, &tableToken);

  return (strncasecmp(TSQL_TBNAME_L, tmpToken.z, tmpToken.n) == 0 && tmpToken.n == strlen(TSQL_TBNAME_L));
}
