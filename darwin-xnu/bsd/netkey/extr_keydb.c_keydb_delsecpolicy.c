
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;


 int M_SECA ;
 int _FREE (struct secpolicy*,int ) ;

void
keydb_delsecpolicy(struct secpolicy *p)
{
 _FREE(p, M_SECA);
}
