; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_calculate_sfm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_calculate_sfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double }
%struct.TYPE_5__ = type { double*, double*, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32)* @calculate_sfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_sfm(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  store double 1.000000e+00, double* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  br label %15

15:                                               ; preds = %70, %4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %19
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double, double* %9, align 8
  %42 = fadd double %41, %40
  store double %42, double* %9, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double, double* %10, align 8
  %51 = fmul double %50, %49
  store double %51, double* %10, align 8
  %52 = load double, double* %10, align 8
  %53 = fcmp ogt double %52, 1.000000e+100
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load double, double* %10, align 8
  %56 = fmul double %55, 1.000000e-100
  store double %56, double* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %68

59:                                               ; preds = %31
  %60 = load double, double* %10, align 8
  %61 = fcmp olt double %60, 1.000000e-100
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load double, double* %10, align 8
  %64 = fmul double %63, 1.000000e+100
  store double %64, double* %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %19
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %15

73:                                               ; preds = %15
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = sitofp i32 %77 to double
  %79 = load double, double* %9, align 8
  %80 = fdiv double %79, %78
  store double %80, double* %9, align 8
  %81 = load double, double* %9, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load double*, double** %83, align 8
  %85 = getelementptr inbounds double, double* %84, i64 0
  store double %81, double* %85, align 8
  %86 = load double, double* %10, align 8
  %87 = call double @log(double %86) #2
  %88 = load i32, i32* %11, align 4
  %89 = sitofp i32 %88 to double
  %90 = fmul double 0x406CC845A1CAC083, %89
  %91 = fadd double %87, %90
  store double %91, double* %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %10, align 8
  %95 = fdiv double %94, %93
  store double %95, double* %10, align 8
  %96 = load double, double* %9, align 8
  %97 = call double @log(double %96) #2
  store double %97, double* %9, align 8
  %98 = load double, double* %9, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load double*, double** %100, align 8
  %102 = getelementptr inbounds double, double* %101, i64 1
  store double %98, double* %102, align 8
  %103 = load double, double* %9, align 8
  %104 = load double, double* %10, align 8
  %105 = fsub double %103, %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load double*, double** %107, align 8
  %109 = getelementptr inbounds double, double* %108, i64 2
  store double %105, double* %109, align 8
  br label %132

110:                                              ; preds = %73
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load double*, double** %115, align 8
  %117 = getelementptr inbounds double, double* %116, i64 0
  store double %113, double* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load double, double* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load double*, double** %122, align 8
  %124 = getelementptr inbounds double, double* %123, i64 1
  store double %120, double* %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load double, double* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load double*, double** %129, align 8
  %131 = getelementptr inbounds double, double* %130, i64 2
  store double %127, double* %131, align 8
  br label %132

132:                                              ; preds = %110, %76
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
