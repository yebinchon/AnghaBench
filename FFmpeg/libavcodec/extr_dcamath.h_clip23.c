
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int av_clip_intp2 (int ,int) ;

__attribute__((used)) static inline int32_t clip23(int32_t a) { return av_clip_intp2(a, 23); }
