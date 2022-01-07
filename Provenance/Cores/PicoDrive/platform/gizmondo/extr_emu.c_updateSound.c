
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PsndOut ;
 int snd_all_samples ;
 scalar_t__ snd_cbuf_samples ;
 scalar_t__ snd_cbuff ;

__attribute__((used)) static void updateSound(int len)
{
 snd_all_samples += len / 2;
 PsndOut += len / 2;
 if (PsndOut - snd_cbuff >= snd_cbuf_samples)
 {


  PsndOut = snd_cbuff;
 }
}
