
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndOut ;
 int sndout_write_nb (int ,int) ;

__attribute__((used)) static void snd_write_nonblocking(int len)
{
 sndout_write_nb(PsndOut, len);
}
