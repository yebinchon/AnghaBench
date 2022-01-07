
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecDescriptor ;


 int AV_LOG_ERROR ;
 int av_assert0 (int) ;
 int ** av_calloc (unsigned int,int) ;
 int av_log (int *,int ,char*) ;
 int * avcodec_descriptor_next (int const*) ;
 int compare_codec_desc ;
 int exit_program (int) ;
 int qsort (int const**,unsigned int,int,int ) ;

__attribute__((used)) static unsigned get_codecs_sorted(const AVCodecDescriptor ***rcodecs)
{
    const AVCodecDescriptor *desc = ((void*)0);
    const AVCodecDescriptor **codecs;
    unsigned nb_codecs = 0, i = 0;

    while ((desc = avcodec_descriptor_next(desc)))
        nb_codecs++;
    if (!(codecs = av_calloc(nb_codecs, sizeof(*codecs)))) {
        av_log(((void*)0), AV_LOG_ERROR, "Out of memory\n");
        exit_program(1);
    }
    desc = ((void*)0);
    while ((desc = avcodec_descriptor_next(desc)))
        codecs[i++] = desc;
    av_assert0(i == nb_codecs);
    qsort(codecs, nb_codecs, sizeof(*codecs), compare_codec_desc);
    *rcodecs = codecs;
    return nb_codecs;
}
