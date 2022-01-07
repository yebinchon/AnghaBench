
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SwrContext ;


 char* av_err2str (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int swr_convert (int *,int **,int const,int const**,int const) ;

__attribute__((used)) static int convert_samples(const uint8_t **input_data,
                           uint8_t **converted_data, const int frame_size,
                           SwrContext *resample_context)
{
    int error;


    if ((error = swr_convert(resample_context,
                             converted_data, frame_size,
                             input_data , frame_size)) < 0) {
        fprintf(stderr, "Could not convert input samples (error '%s')\n",
                av_err2str(error));
        return error;
    }

    return 0;
}
