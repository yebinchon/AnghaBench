
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHUNK_SIZE ;
 int floorf (int) ;
 int roundf (float) ;

int chunked(float x) {
    return floorf(roundf(x) / CHUNK_SIZE);
}
