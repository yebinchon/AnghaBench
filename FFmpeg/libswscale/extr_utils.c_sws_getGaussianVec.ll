; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_getGaussianVec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_getGaussianVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sws_getGaussianVec(double %0, double %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %11 = load double, double* %4, align 8
  %12 = load double, double* %5, align 8
  %13 = fmul double %11, %12
  %14 = fadd double %13, 5.000000e-01
  %15 = fptosi double %14 to i32
  %16 = or i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 5.000000e-01
  store double %20, double* %8, align 8
  %21 = load double, double* %4, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load double, double* %5, align 8
  %25 = fcmp olt double %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.TYPE_5__* @sws_allocVec(i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %74

33:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = sitofp i32 %39 to double
  %41 = load double, double* %8, align 8
  %42 = fsub double %40, %41
  store double %42, double* %10, align 8
  %43 = load double, double* %10, align 8
  %44 = fneg double %43
  %45 = load double, double* %10, align 8
  %46 = fmul double %44, %45
  %47 = load double, double* %4, align 8
  %48 = fmul double 2.000000e+00, %47
  %49 = load double, double* %4, align 8
  %50 = fmul double %48, %49
  %51 = fdiv double %46, %50
  %52 = call i32 @exp(double %51)
  %53 = load double, double* %4, align 8
  %54 = fmul double 2.000000e+00, %53
  %55 = load i32, i32* @M_PI, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double %54, %56
  %58 = fptosi double %57 to i32
  %59 = call i32 @sqrt(i32 %58)
  %60 = sdiv i32 %52, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %34

70:                                               ; preds = %34
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = call i32 @sws_normalizeVec(%struct.TYPE_5__* %71, double 1.000000e+00)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %3, align 8
  br label %74

74:                                               ; preds = %70, %32, %26
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %75
}

declare dso_local %struct.TYPE_5__* @sws_allocVec(i32) #1

declare dso_local i32 @exp(double) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @sws_normalizeVec(%struct.TYPE_5__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
