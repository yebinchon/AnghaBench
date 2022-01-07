
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buckets ;
 int memset (int ,int ,int) ;
 scalar_t__ nodecount ;

__attribute__((used)) static void reset(void) {
 if (nodecount > 0)
  memset(buckets, 0, sizeof buckets);
 nodecount = 0;
}
