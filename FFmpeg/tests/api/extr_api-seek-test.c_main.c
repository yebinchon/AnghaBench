
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 scalar_t__ seek_test (char*,char*,char*) ;

int main(int argc, char **argv)
{
    if (argc < 4) {
        av_log(((void*)0), AV_LOG_ERROR, "Incorrect input\n");
        return 1;
    }

    if (seek_test(argv[1], argv[2], argv[3]) != 0)
        return 1;

    return 0;
}
