
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anEdge; } ;
struct TYPE_4__ {struct TYPE_4__* Lnext; } ;
typedef TYPE_1__ TESShalfEdge ;
typedef TYPE_2__ TESSface ;



__attribute__((used)) static int CountFaceVerts( TESSface *f )
{
 TESShalfEdge *eCur = f->anEdge;
 int n = 0;
 do
 {
  n++;
  eCur = eCur->Lnext;
 }
 while (eCur != f->anEdge);
 return n;
}
