
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulg ;
typedef int uch ;


 int Trace (int ) ;
 int channels ;
 int fread (int *,long,int,int ) ;
 int free (int *) ;
 int height ;
 int * image_data ;
 scalar_t__ malloc (int) ;
 int saved_infile ;
 int stderr ;
 int width ;

uch *readpng_get_image(double display_exponent, int *pChannels, ulg *pRowbytes)
{
    ulg rowbytes;
    *pRowbytes = rowbytes = channels*width;
    *pChannels = channels;

    if ((image_data = (uch *)malloc(rowbytes*height)) == ((void*)0)) {
        return ((void*)0);
    }

    Trace((stderr, "readpng_get_image:  rowbytes = %ld, height = %ld\n", rowbytes, height));




    if (fread(image_data, 1L, rowbytes*height, saved_infile) <
       rowbytes*height) {
        free (image_data);
        image_data = ((void*)0);
        return ((void*)0);
    }

    return image_data;
}
