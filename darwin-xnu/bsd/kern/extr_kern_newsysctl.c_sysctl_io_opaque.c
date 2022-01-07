
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int newptr; } ;


 int SYSCTL_IN (struct sysctl_req*,void*,size_t) ;
 int SYSCTL_OUT (struct sysctl_req*,void*,size_t) ;

int sysctl_io_opaque(struct sysctl_req *req,void *pValue, size_t valueSize, int *changed)
{
 int error;

 if (changed) *changed = 0;


 error = SYSCTL_OUT(req, pValue, valueSize);


 if (error || !req->newptr)
  return(error);

 error = SYSCTL_IN(req, pValue, valueSize);

 if (!error && changed)
  *changed = 1;
 return(error);
}
