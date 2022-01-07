
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndOut ;
 int audio_batch_cb (int ,int) ;

__attribute__((used)) static void snd_write(int len)
{
 audio_batch_cb(PsndOut, len / 4);
}
