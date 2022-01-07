
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_work_object_t ;
typedef int hb_job_t ;


 int AAC_MODE_HE ;
 int encCoreAudioInit (int *,int *,int ) ;

int encCoreAudioInitHE(hb_work_object_t *w, hb_job_t *job)
{
    return encCoreAudioInit(w, job, AAC_MODE_HE);
}
