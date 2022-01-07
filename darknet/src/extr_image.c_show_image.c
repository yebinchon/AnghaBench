
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int image ;


 int fprintf (int ,char*,char const*) ;
 int save_image (int ,char const*) ;
 int show_image_cv (int ,char const*,int) ;
 int stderr ;

int show_image(image p, const char *name, int ms)
{




    fprintf(stderr, "Not compiled with OpenCV, saving to %s.png instead\n", name);
    save_image(p, name);
    return -1;

}
