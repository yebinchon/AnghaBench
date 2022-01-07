
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcache_obj_t ;
typedef int mbuf_class_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;







 int MIN (unsigned int,int ) ;
 int VERIFY (int ) ;
 unsigned int cslab_alloc (int,int ***,int ) ;
 int cslab_free (int,int *,int) ;
 int m_infree (int) ;
 int m_minlimit (int) ;
 int mbuf_mlock ;

__attribute__((used)) static boolean_t
mbuf_steal(mbuf_class_t class, unsigned int num)
{
 mcache_obj_t *top = ((void*)0);
 mcache_obj_t **list = &top;
 unsigned int tot = 0;

 LCK_MTX_ASSERT(mbuf_mlock, LCK_MTX_ASSERT_OWNED);

 switch (class) {
 case 131:
 case 132:
 case 133:
 case 134:
  return (FALSE);

 case 128:
 case 129:
 case 130:

  if (m_infree(class) > m_minlimit(class)) {
   tot = cslab_alloc(class, &list,
       MIN(num, m_infree(class)));
  }


  if (top != ((void*)0))
   (void) cslab_free(class, top, 1);
  break;

 default:
  VERIFY(0);

 }

 return (tot == num);
}
