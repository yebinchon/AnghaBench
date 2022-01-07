
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_subtitle_config_t ;
typedef int hb_job_t ;


 int IMPORTSRT ;
 int hb_import_subtitle_add (int const*,int const*,char const*,int ) ;

int hb_srt_add( const hb_job_t * job,
                const hb_subtitle_config_t * subtitlecfg,
                const char *lang_code )
{
    return hb_import_subtitle_add(job, subtitlecfg, lang_code, IMPORTSRT);
}
