
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_transfer {struct per_transfer* prev; struct per_transfer* next; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int all_xfers ;
 struct per_transfer* calloc (int,int) ;
 struct per_transfer* transfers ;
 struct per_transfer* transfersl ;

__attribute__((used)) static CURLcode add_per_transfer(struct per_transfer **per)
{
  struct per_transfer *p;
  p = calloc(sizeof(struct per_transfer), 1);
  if(!p)
    return CURLE_OUT_OF_MEMORY;
  if(!transfers)

    transfersl = transfers = p;
  else {

    transfersl->next = p;

    p->prev = transfersl;

    transfersl = p;
  }
  *per = p;
  all_xfers++;
  return CURLE_OK;
}
