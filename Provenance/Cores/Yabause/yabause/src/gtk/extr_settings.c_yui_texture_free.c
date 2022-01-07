
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guchar ;
typedef int gpointer ;


 int free (int *) ;

void yui_texture_free(guchar *pixels, gpointer data) {
  free(pixels);
}
