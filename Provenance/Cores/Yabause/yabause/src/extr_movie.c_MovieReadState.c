
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MovieLoadState () ;
 int ReadMovieInState (int *) ;

void MovieReadState(FILE* fp) {

 ReadMovieInState(fp);
 MovieLoadState();

}
