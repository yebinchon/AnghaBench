
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FAIL (int) ;
 long INT_MAX ;
 int av_free (char*) ;
 int av_log (void*,int ,char*,...) ;
 int* av_malloc_array (int,int) ;
 char* av_strdup (char const*) ;
 char* av_strtok (char*,char*,char**) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int parse_frames(void *log_ctx, int **frames, int *nb_frames,
                        const char *frames_str)
{
    char *p;
    int i, ret = 0;
    char *frames_str1 = av_strdup(frames_str);
    char *saveptr = ((void*)0);

    if (!frames_str1)
        return AVERROR(ENOMEM);



    *nb_frames = 1;
    for (p = frames_str1; *p; p++)
        if (*p == ',')
            (*nb_frames)++;

    *frames = av_malloc_array(*nb_frames, sizeof(**frames));
    if (!*frames) {
        av_log(log_ctx, AV_LOG_ERROR, "Could not allocate forced frames array\n");
        ret = AVERROR(ENOMEM); goto end;
    }

    p = frames_str1;
    for (i = 0; i < *nb_frames; i++) {
        long int f;
        char *tailptr;
        char *fstr = av_strtok(p, ",", &saveptr);

        p = ((void*)0);
        if (!fstr) {
            av_log(log_ctx, AV_LOG_ERROR, "Empty frame specification in frame list %s\n",
                   frames_str);
            ret = AVERROR(EINVAL); goto end;
        }
        f = strtol(fstr, &tailptr, 10);
        if (*tailptr || f <= 0 || f >= INT_MAX) {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Invalid argument '%s', must be a positive integer <= INT64_MAX\n",
                   fstr);
            ret = AVERROR(EINVAL); goto end;
        }
        (*frames)[i] = f;


        if (i && (*frames)[i-1] > (*frames)[i]) {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Specified frame %d is greater than the following frame %d\n",
                   (*frames)[i], (*frames)[i-1]);
            ret = AVERROR(EINVAL); goto end;
        }
    }

end:
    av_free(frames_str1);
    return ret;
}
