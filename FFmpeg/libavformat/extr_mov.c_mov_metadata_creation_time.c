
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVDictionary ;


 int AV_LOG_DEBUG ;
 int av_log (void*,int ,char*) ;
 int avpriv_dict_set_timestamp (int **,char*,int) ;

__attribute__((used)) static void mov_metadata_creation_time(AVDictionary **metadata, int64_t time, void *logctx)
{
    if (time) {
        if(time >= 2082844800)
            time -= 2082844800;

        if ((int64_t)(time * 1000000ULL) / 1000000 != time) {
            av_log(logctx, AV_LOG_DEBUG, "creation_time is not representable\n");
            return;
        }

        avpriv_dict_set_timestamp(metadata, "creation_time", time * 1000000);
    }
}
