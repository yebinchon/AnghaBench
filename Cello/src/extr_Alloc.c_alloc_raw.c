
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int ALLOC_RAW ;
 int alloc_by (int ,int ) ;

var alloc_raw(var type) { return alloc_by(type, ALLOC_RAW); }
