
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; int tv_usec; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int perror (char*) ;

double getCurrentTime() {
  struct timeval tv;
  if (gettimeofday(&tv, ((void*)0)) != 0) {
    perror("Failed to get current time in ms");
    exit(EXIT_FAILURE);
  }

  return tv.tv_sec + tv.tv_usec / 1E6;
}
