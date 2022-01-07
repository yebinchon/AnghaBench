
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 int * av_realloc_f (int *,int,int) ;
 int * crc_array ;
 int number_of_elements ;
 int * pts_array ;
 int size_of_array ;

__attribute__((used)) static int add_crc_to_array(uint32_t crc, int64_t pts)
{
    if (size_of_array <= number_of_elements) {
        if (size_of_array == 0)
            size_of_array = 10;
        size_of_array *= 2;
        crc_array = av_realloc_f(crc_array, size_of_array, sizeof(uint32_t));
        pts_array = av_realloc_f(pts_array, size_of_array, sizeof(int64_t));
        if ((crc_array == ((void*)0)) || (pts_array == ((void*)0))) {
            av_log(((void*)0), AV_LOG_ERROR, "Can't allocate array to store crcs\n");
            return AVERROR(ENOMEM);
        }
    }
    crc_array[number_of_elements] = crc;
    pts_array[number_of_elements] = pts;
    number_of_elements++;
    return 0;
}
