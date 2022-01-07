
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_numPaths; struct TYPE_5__* m_paths; int m_path; int m_strokePaint; int m_fillPaint; } ;
typedef TYPE_1__ PS ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int vgDestroyPaint (int ) ;
 int vgDestroyPath (int ) ;

void PS_destruct(PS* ps)
{
 int i;
 assert(ps);
 for(i=0;i<ps->m_numPaths;i++)
 {
  vgDestroyPaint(ps->m_paths[i].m_fillPaint);
  vgDestroyPaint(ps->m_paths[i].m_strokePaint);
  vgDestroyPath(ps->m_paths[i].m_path);
 }
 free(ps->m_paths);
 free(ps);
}
