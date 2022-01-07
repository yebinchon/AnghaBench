
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqworkq {int dummy; } ;
struct kqworkloop {int dummy; } ;
struct kqfile {int dummy; } ;
struct knote {int dummy; } ;


 void* knote_zone ;
 int kq_lck_attr ;
 int kq_lck_grp ;
 int kq_lck_grp_attr ;
 void* kqfile_zone ;
 void* kqworkloop_zone ;
 void* kqworkq_zone ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int memorystatus_kevent_init (int ,int ) ;
 void* zinit (int,int,int,char*) ;

void
knote_init(void)
{
 knote_zone = zinit(sizeof(struct knote), 8192*sizeof(struct knote),
                    8192, "knote zone");

 kqfile_zone = zinit(sizeof(struct kqfile), 8192*sizeof(struct kqfile),
                     8192, "kqueue file zone");

 kqworkq_zone = zinit(sizeof(struct kqworkq), 8192*sizeof(struct kqworkq),
                     8192, "kqueue workq zone");

 kqworkloop_zone = zinit(sizeof(struct kqworkloop), 8192*sizeof(struct kqworkloop),
                     8192, "kqueue workloop zone");


 kq_lck_grp_attr = lck_grp_attr_alloc_init();

 kq_lck_grp = lck_grp_alloc_init("kqueue", kq_lck_grp_attr);


 kq_lck_attr = lck_attr_alloc_init();





}
