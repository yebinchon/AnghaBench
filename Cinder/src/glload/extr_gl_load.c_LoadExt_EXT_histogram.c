
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRESETMINMAXEXTPROC ;
typedef scalar_t__ PFNGLRESETHISTOGRAMEXTPROC ;
typedef scalar_t__ PFNGLMINMAXEXTPROC ;
typedef scalar_t__ PFNGLHISTOGRAMEXTPROC ;
typedef scalar_t__ PFNGLGETMINMAXPARAMETERIVEXTPROC ;
typedef scalar_t__ PFNGLGETMINMAXPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLGETMINMAXEXTPROC ;
typedef scalar_t__ PFNGLGETHISTOGRAMPARAMETERIVEXTPROC ;
typedef scalar_t__ PFNGLGETHISTOGRAMPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLGETHISTOGRAMEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetHistogramEXT ;
 scalar_t__ _funcptr_glGetHistogramParameterfvEXT ;
 scalar_t__ _funcptr_glGetHistogramParameterivEXT ;
 scalar_t__ _funcptr_glGetMinmaxEXT ;
 scalar_t__ _funcptr_glGetMinmaxParameterfvEXT ;
 scalar_t__ _funcptr_glGetMinmaxParameterivEXT ;
 scalar_t__ _funcptr_glHistogramEXT ;
 scalar_t__ _funcptr_glMinmaxEXT ;
 scalar_t__ _funcptr_glResetHistogramEXT ;
 scalar_t__ _funcptr_glResetMinmaxEXT ;

__attribute__((used)) static int LoadExt_EXT_histogram()
{
 int numFailed = 0;
 _funcptr_glGetHistogramEXT = (PFNGLGETHISTOGRAMEXTPROC)IntGetProcAddress("glGetHistogramEXT");
 if(!_funcptr_glGetHistogramEXT) ++numFailed;
 _funcptr_glGetHistogramParameterfvEXT = (PFNGLGETHISTOGRAMPARAMETERFVEXTPROC)IntGetProcAddress("glGetHistogramParameterfvEXT");
 if(!_funcptr_glGetHistogramParameterfvEXT) ++numFailed;
 _funcptr_glGetHistogramParameterivEXT = (PFNGLGETHISTOGRAMPARAMETERIVEXTPROC)IntGetProcAddress("glGetHistogramParameterivEXT");
 if(!_funcptr_glGetHistogramParameterivEXT) ++numFailed;
 _funcptr_glGetMinmaxEXT = (PFNGLGETMINMAXEXTPROC)IntGetProcAddress("glGetMinmaxEXT");
 if(!_funcptr_glGetMinmaxEXT) ++numFailed;
 _funcptr_glGetMinmaxParameterfvEXT = (PFNGLGETMINMAXPARAMETERFVEXTPROC)IntGetProcAddress("glGetMinmaxParameterfvEXT");
 if(!_funcptr_glGetMinmaxParameterfvEXT) ++numFailed;
 _funcptr_glGetMinmaxParameterivEXT = (PFNGLGETMINMAXPARAMETERIVEXTPROC)IntGetProcAddress("glGetMinmaxParameterivEXT");
 if(!_funcptr_glGetMinmaxParameterivEXT) ++numFailed;
 _funcptr_glHistogramEXT = (PFNGLHISTOGRAMEXTPROC)IntGetProcAddress("glHistogramEXT");
 if(!_funcptr_glHistogramEXT) ++numFailed;
 _funcptr_glMinmaxEXT = (PFNGLMINMAXEXTPROC)IntGetProcAddress("glMinmaxEXT");
 if(!_funcptr_glMinmaxEXT) ++numFailed;
 _funcptr_glResetHistogramEXT = (PFNGLRESETHISTOGRAMEXTPROC)IntGetProcAddress("glResetHistogramEXT");
 if(!_funcptr_glResetHistogramEXT) ++numFailed;
 _funcptr_glResetMinmaxEXT = (PFNGLRESETMINMAXEXTPROC)IntGetProcAddress("glResetMinmaxEXT");
 if(!_funcptr_glResetMinmaxEXT) ++numFailed;
 return numFailed;
}
