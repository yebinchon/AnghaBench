
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secreplay {struct secreplay* bitmap; } ;


 int M_SECA ;
 int _FREE (struct secreplay*,int ) ;

void
keydb_delsecreplay(struct secreplay *p)
{
 if (p->bitmap)
  _FREE(p->bitmap, M_SECA);
 _FREE(p, M_SECA);
}
