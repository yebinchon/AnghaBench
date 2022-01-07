
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 scalar_t__ video_decode_example (char*) ;

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        av_log(((void*)0), AV_LOG_ERROR, "Incorrect input\n");
        return 1;
    }

    if (video_decode_example(argv[1]) != 0)
        return 1;

    return 0;
}
