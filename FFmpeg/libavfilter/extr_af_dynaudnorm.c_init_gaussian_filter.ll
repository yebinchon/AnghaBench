; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_init_gaussian_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_init_gaussian_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double* }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_gaussian_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gaussian_filter(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = fdiv double %13, 2.000000e+00
  %15 = fsub double %14, 1.000000e+00
  %16 = fdiv double %15, 3.000000e+00
  %17 = fadd double %16, 0x3FD5555555555555
  store double %17, double* %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fdiv double %20, 2.000000e+00
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load double, double* %4, align 8
  %24 = load double, double* @M_PI, align 8
  %25 = fmul double 2.000000e+00, %24
  %26 = call double @sqrt(double %25)
  %27 = fmul double %23, %26
  %28 = fdiv double 1.000000e+00, %27
  store double %28, double* %8, align 8
  %29 = load double, double* %4, align 8
  %30 = fmul double 2.000000e+00, %29
  %31 = load double, double* %4, align 8
  %32 = fmul double %30, %31
  store double %32, double* %9, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %70, %1
  %34 = load i32, i32* %6, align 4
  %35 = sitofp i32 %34 to double
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fcmp olt double %35, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load double, double* %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %9, align 8
  %51 = fdiv double %49, %50
  %52 = fptosi double %51 to i32
  %53 = call double @exp(i32 %52)
  %54 = fmul double %44, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %54, double* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load double, double* %3, align 8
  %69 = fadd double %68, %67
  store double %69, double* %3, align 8
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %33

73:                                               ; preds = %33
  %74 = load double, double* %3, align 8
  %75 = fdiv double 1.000000e+00, %74
  store double %75, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %93, %73
  %77 = load i32, i32* %6, align 4
  %78 = sitofp i32 %77 to double
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = fcmp olt double %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load double, double* %5, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load double*, double** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fmul double %91, %84
  store double %92, double* %90, align 8
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %76

96:                                               ; preds = %76
  ret void
}

declare dso_local double @sqrt(double) #1

declare dso_local double @exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
