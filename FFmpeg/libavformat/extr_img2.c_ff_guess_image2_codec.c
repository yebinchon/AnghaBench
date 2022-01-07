
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;


 int ff_img_tags ;
 int str2id (int ,char const*) ;

enum AVCodecID ff_guess_image2_codec(const char *filename)
{
    return str2id(ff_img_tags, filename);
}
