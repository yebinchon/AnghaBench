
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_9__ {size_t mca_contents_size; struct TYPE_9__* mca_next; struct TYPE_9__* mca_contents; } ;
typedef TYPE_1__ mcl_saved_contents_t ;
struct TYPE_10__ {struct TYPE_10__* obj_next; } ;
typedef TYPE_2__ mcache_obj_t ;
typedef TYPE_1__ mcache_audit_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {TYPE_1__** cl_audit; } ;


 int ASSERT (int) ;
 int IS_P2ALIGNED (TYPE_1__*,int) ;
 unsigned int MTOPG (void*) ;
 unsigned int NMBPG ;
 int VERIFY (int) ;
 int bzero (TYPE_1__*,int) ;
 unsigned int maxclaudit ;
 TYPE_4__* mclaudit ;

__attribute__((used)) static void
mcl_audit_init(void *buf, mcache_audit_t **mca_list,
    mcache_obj_t **con_list, size_t con_size, unsigned int num)
{
 mcache_audit_t *mca, *mca_tail;
 mcache_obj_t *con = ((void*)0);
 boolean_t save_contents = (con_list != ((void*)0));
 unsigned int i, ix;

 ASSERT(num <= NMBPG);
 ASSERT(con_list == ((void*)0) || con_size != 0);

 ix = MTOPG(buf);
 VERIFY(ix < maxclaudit);


 for (i = 0; i < num; i++)
  VERIFY(mclaudit[ix].cl_audit[i] == ((void*)0));

 mca = mca_tail = *mca_list;
 if (save_contents)
  con = *con_list;

 for (i = 0; i < num; i++) {
  mcache_audit_t *next;

  next = mca->mca_next;
  bzero(mca, sizeof (*mca));
  mca->mca_next = next;
  mclaudit[ix].cl_audit[i] = mca;


  if (save_contents) {
   mcl_saved_contents_t *msc =
       (mcl_saved_contents_t *)(void *)con;

   VERIFY(msc != ((void*)0));
   VERIFY(IS_P2ALIGNED(msc, sizeof (u_int64_t)));
   VERIFY(con_size == sizeof (*msc));
   mca->mca_contents_size = con_size;
   mca->mca_contents = msc;
   con = con->obj_next;
   bzero(mca->mca_contents, mca->mca_contents_size);
  }

  mca_tail = mca;
  mca = mca->mca_next;
 }

 if (save_contents)
  *con_list = con;

 *mca_list = mca_tail->mca_next;
 mca_tail->mca_next = ((void*)0);
}
