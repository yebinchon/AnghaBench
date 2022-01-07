
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 scalar_t__ bcmp (int *,int *,int) ;

int
kauth_guid_equal(guid_t *guid1, guid_t *guid2)
{
 return(bcmp(guid1, guid2, sizeof(*guid1)) == 0);
}
