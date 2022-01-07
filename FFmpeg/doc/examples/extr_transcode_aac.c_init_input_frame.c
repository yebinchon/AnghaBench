
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFrame ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_frame_alloc () ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int init_input_frame(AVFrame **frame)
{
    if (!(*frame = av_frame_alloc())) {
        fprintf(stderr, "Could not allocate input frame\n");
        return AVERROR(ENOMEM);
    }
    return 0;
}
