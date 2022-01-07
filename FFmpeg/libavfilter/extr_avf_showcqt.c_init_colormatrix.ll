; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_colormatrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_colormatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double**, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unsupported colorspace, setting it to unspecified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_colormatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_colormatrix(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 128, label %17
    i32 133, label %17
    i32 130, label %17
    i32 132, label %18
    i32 131, label %19
    i32 129, label %20
    i32 134, label %21
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AV_LOG_WARNING, align 4
  %14 = call i32 @av_log(i32 %12, i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 128, i32* %16, align 8
  br label %17

17:                                               ; preds = %1, %1, %1, %9
  store double 2.990000e-01, double* %3, align 8
  store double 1.140000e-01, double* %5, align 8
  br label %22

18:                                               ; preds = %1
  store double 2.126000e-01, double* %3, align 8
  store double 7.220000e-02, double* %5, align 8
  br label %22

19:                                               ; preds = %1
  store double 3.000000e-01, double* %3, align 8
  store double 1.100000e-01, double* %5, align 8
  br label %22

20:                                               ; preds = %1
  store double 2.120000e-01, double* %3, align 8
  store double 0x3FB645A1CAC08312, double* %5, align 8
  br label %22

21:                                               ; preds = %1
  store double 2.627000e-01, double* %3, align 8
  store double 5.930000e-02, double* %5, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17
  %23 = load double, double* %3, align 8
  %24 = fsub double 1.000000e+00, %23
  %25 = load double, double* %5, align 8
  %26 = fsub double %24, %25
  store double %26, double* %4, align 8
  %27 = load double, double* %3, align 8
  %28 = fmul double 2.190000e+02, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load double**, double*** %30, align 8
  %32 = getelementptr inbounds double*, double** %31, i64 0
  %33 = load double*, double** %32, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  store double %28, double* %34, align 8
  %35 = load double, double* %4, align 8
  %36 = fmul double 2.190000e+02, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load double**, double*** %38, align 8
  %40 = getelementptr inbounds double*, double** %39, i64 0
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  store double %36, double* %42, align 8
  %43 = load double, double* %5, align 8
  %44 = fmul double 2.190000e+02, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load double**, double*** %46, align 8
  %48 = getelementptr inbounds double*, double** %47, i64 0
  %49 = load double*, double** %48, align 8
  %50 = getelementptr inbounds double, double* %49, i64 2
  store double %44, double* %50, align 8
  %51 = load double, double* %3, align 8
  %52 = fmul double -1.120000e+02, %51
  %53 = load double, double* %5, align 8
  %54 = fsub double 1.000000e+00, %53
  %55 = fdiv double %52, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load double**, double*** %57, align 8
  %59 = getelementptr inbounds double*, double** %58, i64 1
  %60 = load double*, double** %59, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  store double %55, double* %61, align 8
  %62 = load double, double* %4, align 8
  %63 = fmul double -1.120000e+02, %62
  %64 = load double, double* %5, align 8
  %65 = fsub double 1.000000e+00, %64
  %66 = fdiv double %63, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load double**, double*** %68, align 8
  %70 = getelementptr inbounds double*, double** %69, i64 1
  %71 = load double*, double** %70, align 8
  %72 = getelementptr inbounds double, double* %71, i64 1
  store double %66, double* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load double**, double*** %74, align 8
  %76 = getelementptr inbounds double*, double** %75, i64 1
  %77 = load double*, double** %76, align 8
  %78 = getelementptr inbounds double, double* %77, i64 2
  store double 1.120000e+02, double* %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load double**, double*** %80, align 8
  %82 = getelementptr inbounds double*, double** %81, i64 2
  %83 = load double*, double** %82, align 8
  %84 = getelementptr inbounds double, double* %83, i64 0
  store double 1.120000e+02, double* %84, align 8
  %85 = load double, double* %4, align 8
  %86 = fmul double -1.120000e+02, %85
  %87 = load double, double* %3, align 8
  %88 = fsub double 1.000000e+00, %87
  %89 = fdiv double %86, %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load double**, double*** %91, align 8
  %93 = getelementptr inbounds double*, double** %92, i64 2
  %94 = load double*, double** %93, align 8
  %95 = getelementptr inbounds double, double* %94, i64 1
  store double %89, double* %95, align 8
  %96 = load double, double* %5, align 8
  %97 = fmul double -1.120000e+02, %96
  %98 = load double, double* %3, align 8
  %99 = fsub double 1.000000e+00, %98
  %100 = fdiv double %97, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load double**, double*** %102, align 8
  %104 = getelementptr inbounds double*, double** %103, i64 2
  %105 = load double*, double** %104, align 8
  %106 = getelementptr inbounds double, double* %105, i64 2
  store double %100, double* %106, align 8
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
