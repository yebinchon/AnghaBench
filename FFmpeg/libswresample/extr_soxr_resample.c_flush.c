
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwrContext {scalar_t__ resample; scalar_t__ delayed_samples_fixup; } ;
typedef int soxr_t ;


 scalar_t__ soxr_delay (int ) ;
 int soxr_process (int ,float*,int ,size_t*,float*,int ,size_t*) ;

__attribute__((used)) static int flush(struct SwrContext *s){
    s->delayed_samples_fixup = soxr_delay((soxr_t)s->resample);

    soxr_process((soxr_t)s->resample, ((void*)0), 0, ((void*)0), ((void*)0), 0, ((void*)0));

    {
        float f;
        size_t idone, odone;
        soxr_process((soxr_t)s->resample, &f, 0, &idone, &f, 0, &odone);
        s->delayed_samples_fixup -= soxr_delay((soxr_t)s->resample);
    }

    return 0;
}
