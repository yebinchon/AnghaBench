; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getPercentile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_getPercentile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@DBL_EPSILON = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @getPercentile(%struct.TYPE_6__* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store double %1, double* %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call double @findOnlyResult(%struct.TYPE_6__* %21)
  store double %22, double* %3, align 8
  br label %68

23:                                               ; preds = %15
  %24 = load double, double* %5, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, double* %5, align 8
  %26 = load double, double* %5, align 8
  %27 = fsub double %26, 1.000000e+02
  %28 = call double @llvm.fabs.f64(double %27)
  %29 = load double, double* @DBL_EPSILON, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load double, double* %5, align 8
  %33 = load double, double* @DBL_EPSILON, align 8
  %34 = fcmp olt double %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31, %23
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @findMaxMinValue(%struct.TYPE_6__* %36, double* %7, double* %6)
  %38 = load double, double* %5, align 8
  %39 = fsub double %38, 1.000000e+02
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = load double, double* @DBL_EPSILON, align 8
  %42 = fcmp olt double %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load double, double* %7, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load double, double* %6, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi double [ %44, %43 ], [ %46, %45 ]
  store double %48, double* %3, align 8
  br label %68

49:                                               ; preds = %31
  %50 = load double, double* %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sitofp i32 %54 to double
  %56 = fmul double %50, %55
  %57 = fdiv double %56, 1.000000e+02
  store double %57, double* %8, align 8
  %58 = load double, double* %8, align 8
  %59 = fptosi double %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load double, double* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sitofp i64 %63 to double
  %65 = fsub double %62, %64
  %66 = fptosi double %65 to i64
  %67 = call double @getPercentileImpl(%struct.TYPE_6__* %60, i64 %61, i64 %66)
  store double %67, double* %3, align 8
  br label %68

68:                                               ; preds = %49, %47, %20, %14
  %69 = load double, double* %3, align 8
  ret double %69
}

declare dso_local double @findOnlyResult(%struct.TYPE_6__*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @findMaxMinValue(%struct.TYPE_6__*, double*, double*) #1

declare dso_local double @getPercentileImpl(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
