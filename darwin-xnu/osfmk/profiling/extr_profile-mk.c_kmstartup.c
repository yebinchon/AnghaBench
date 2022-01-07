
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int profil_buckets; int max_cpu; scalar_t__ my_cpu; } ;
struct TYPE_3__ {int highpc; int lowpc; int text_len; int profil_len; int counter_size; int scale; } ;
struct profile_vars {int debug; int init; int active; int use_profil; int check_funcs; scalar_t__ use_dci; TYPE_2__ stats; TYPE_1__ profil_info; int profil_buf; int page_size; } ;
typedef int prof_uptrint_t ;
typedef int LHISTCOUNTER ;


 int ACONTEXT_PROFIL ;
 int HISTFRACTION ;
 int PAGE_SIZE ;
 int PROFILE_ALLOC_MEM_YES ;
 int PROFILE_GPROF ;
 struct profile_vars* PROFILE_VARS (int ) ;
 int ROUNDDOWN (int,int) ;
 int ROUNDUP (int,int) ;
 int _profile_alloc (struct profile_vars*,int,int ) ;
 int _profile_md_init (struct profile_vars*,int ,int ) ;
 int _profile_md_start () ;
 int * etext ;
 int printf (char*,long,long,long,long,int ) ;
 int * pstart ;

void
kmstartup(void)
{
 prof_uptrint_t textsize;
 prof_uptrint_t monsize;
 prof_uptrint_t lowpc;
 prof_uptrint_t highpc;
 struct profile_vars *pv;






 lowpc = ROUNDDOWN((prof_uptrint_t)&pstart[0], HISTFRACTION*sizeof(LHISTCOUNTER));
 highpc = ROUNDUP((prof_uptrint_t)&etext[0], HISTFRACTION*sizeof(LHISTCOUNTER));
 textsize = highpc - lowpc;
 monsize = (textsize / HISTFRACTION) * sizeof(LHISTCOUNTER);

 pv = PROFILE_VARS(0);




 pv->page_size = PAGE_SIZE;
 _profile_md_init(pv, PROFILE_GPROF, PROFILE_ALLOC_MEM_YES);


 pv->profil_buf = _profile_alloc (pv, monsize, ACONTEXT_PROFIL);
 pv->profil_info.highpc = highpc;
 pv->profil_info.lowpc = lowpc;
 pv->profil_info.text_len = textsize;
 pv->profil_info.profil_len = monsize;
 pv->profil_info.counter_size = sizeof(LHISTCOUNTER);
 pv->profil_info.scale = 0x10000 / HISTFRACTION;
 pv->stats.profil_buckets = monsize / sizeof(LHISTCOUNTER);


 pv->stats.my_cpu = 0;
 pv->stats.max_cpu = 1;
 pv->init = 1;
 pv->active = 1;
 pv->use_dci = 0;
 pv->use_profil = 1;
 pv->check_funcs = 1;

 if (pv->debug) {
  printf("Profiling kernel, s_textsize=%ld, monsize=%ld [0x%lx..0x%lx], cpu = %d\n",
    (long)textsize,
   (long)monsize,
   (long)lowpc,
   (long)highpc,
   0);
 }

 _profile_md_start();
}
