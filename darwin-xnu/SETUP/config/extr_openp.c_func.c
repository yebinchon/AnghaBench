
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flgs ;
 int mod ;
 scalar_t__ open (char*,int ,int ) ;
 scalar_t__ value ;

__attribute__((used)) static int
func(char *fnam)
{
 value = open (fnam,flgs,mod);
 return (value < 0);
}
