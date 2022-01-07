
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Stream ;
 int method (int ,int ,int (*) (int ,int ,int ),int ,int ) ;

var sopen(var self, var resource, var options) {
  return method(self, Stream, sopen, resource, options);
}
