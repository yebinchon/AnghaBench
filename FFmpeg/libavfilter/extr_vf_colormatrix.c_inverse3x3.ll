; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_inverse3x3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_inverse3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = common dso_local global double 0.000000e+00, align 8
@me = common dso_local global double 0.000000e+00, align 8
@mi = common dso_local global double 0.000000e+00, align 8
@mf = common dso_local global double 0.000000e+00, align 8
@mh = common dso_local global double 0.000000e+00, align 8
@mb = common dso_local global double 0.000000e+00, align 8
@md = common dso_local global double 0.000000e+00, align 8
@mg = common dso_local global double 0.000000e+00, align 8
@mc = common dso_local global double 0.000000e+00, align 8
@ima = common dso_local global double 0.000000e+00, align 8
@imb = common dso_local global double 0.000000e+00, align 8
@imc = common dso_local global double 0.000000e+00, align 8
@imd = common dso_local global double 0.000000e+00, align 8
@ime = common dso_local global double 0.000000e+00, align 8
@imf = common dso_local global double 0.000000e+00, align 8
@img = common dso_local global double 0.000000e+00, align 8
@imh = common dso_local global double 0.000000e+00, align 8
@imi = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x double]*, [3 x double]*)* @inverse3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inverse3x3([3 x double]* %0, [3 x double]* %1) #0 {
  %3 = alloca [3 x double]*, align 8
  %4 = alloca [3 x double]*, align 8
  %5 = alloca double, align 8
  store [3 x double]* %0, [3 x double]** %3, align 8
  store [3 x double]* %1, [3 x double]** %4, align 8
  %6 = load double, double* @ma, align 8
  %7 = load double, double* @me, align 8
  %8 = load double, double* @mi, align 8
  %9 = fmul double %7, %8
  %10 = load double, double* @mf, align 8
  %11 = load double, double* @mh, align 8
  %12 = fmul double %10, %11
  %13 = fsub double %9, %12
  %14 = fmul double %6, %13
  %15 = load double, double* @mb, align 8
  %16 = load double, double* @md, align 8
  %17 = load double, double* @mi, align 8
  %18 = fmul double %16, %17
  %19 = load double, double* @mf, align 8
  %20 = load double, double* @mg, align 8
  %21 = fmul double %19, %20
  %22 = fsub double %18, %21
  %23 = fmul double %15, %22
  %24 = fsub double %14, %23
  %25 = load double, double* @mc, align 8
  %26 = load double, double* @md, align 8
  %27 = load double, double* @mh, align 8
  %28 = fmul double %26, %27
  %29 = load double, double* @me, align 8
  %30 = load double, double* @mg, align 8
  %31 = fmul double %29, %30
  %32 = fsub double %28, %31
  %33 = fmul double %25, %32
  %34 = fadd double %24, %33
  store double %34, double* %5, align 8
  %35 = load double, double* %5, align 8
  %36 = fdiv double 1.000000e+00, %35
  store double %36, double* %5, align 8
  %37 = load double, double* %5, align 8
  %38 = load double, double* @me, align 8
  %39 = load double, double* @mi, align 8
  %40 = fmul double %38, %39
  %41 = load double, double* @mf, align 8
  %42 = load double, double* @mh, align 8
  %43 = fmul double %41, %42
  %44 = fsub double %40, %43
  %45 = fmul double %37, %44
  store double %45, double* @ima, align 8
  %46 = load double, double* %5, align 8
  %47 = load double, double* @mc, align 8
  %48 = load double, double* @mh, align 8
  %49 = fmul double %47, %48
  %50 = load double, double* @mb, align 8
  %51 = load double, double* @mi, align 8
  %52 = fmul double %50, %51
  %53 = fsub double %49, %52
  %54 = fmul double %46, %53
  store double %54, double* @imb, align 8
  %55 = load double, double* %5, align 8
  %56 = load double, double* @mb, align 8
  %57 = load double, double* @mf, align 8
  %58 = fmul double %56, %57
  %59 = load double, double* @mc, align 8
  %60 = load double, double* @me, align 8
  %61 = fmul double %59, %60
  %62 = fsub double %58, %61
  %63 = fmul double %55, %62
  store double %63, double* @imc, align 8
  %64 = load double, double* %5, align 8
  %65 = load double, double* @mf, align 8
  %66 = load double, double* @mg, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* @md, align 8
  %69 = load double, double* @mi, align 8
  %70 = fmul double %68, %69
  %71 = fsub double %67, %70
  %72 = fmul double %64, %71
  store double %72, double* @imd, align 8
  %73 = load double, double* %5, align 8
  %74 = load double, double* @ma, align 8
  %75 = load double, double* @mi, align 8
  %76 = fmul double %74, %75
  %77 = load double, double* @mc, align 8
  %78 = load double, double* @mg, align 8
  %79 = fmul double %77, %78
  %80 = fsub double %76, %79
  %81 = fmul double %73, %80
  store double %81, double* @ime, align 8
  %82 = load double, double* %5, align 8
  %83 = load double, double* @mc, align 8
  %84 = load double, double* @md, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* @ma, align 8
  %87 = load double, double* @mf, align 8
  %88 = fmul double %86, %87
  %89 = fsub double %85, %88
  %90 = fmul double %82, %89
  store double %90, double* @imf, align 8
  %91 = load double, double* %5, align 8
  %92 = load double, double* @md, align 8
  %93 = load double, double* @mh, align 8
  %94 = fmul double %92, %93
  %95 = load double, double* @me, align 8
  %96 = load double, double* @mg, align 8
  %97 = fmul double %95, %96
  %98 = fsub double %94, %97
  %99 = fmul double %91, %98
  store double %99, double* @img, align 8
  %100 = load double, double* %5, align 8
  %101 = load double, double* @mb, align 8
  %102 = load double, double* @mg, align 8
  %103 = fmul double %101, %102
  %104 = load double, double* @ma, align 8
  %105 = load double, double* @mh, align 8
  %106 = fmul double %104, %105
  %107 = fsub double %103, %106
  %108 = fmul double %100, %107
  store double %108, double* @imh, align 8
  %109 = load double, double* %5, align 8
  %110 = load double, double* @ma, align 8
  %111 = load double, double* @me, align 8
  %112 = fmul double %110, %111
  %113 = load double, double* @mb, align 8
  %114 = load double, double* @md, align 8
  %115 = fmul double %113, %114
  %116 = fsub double %112, %115
  %117 = fmul double %109, %116
  store double %117, double* @imi, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
