; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_pixel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.arg*, i32, double, double)* @pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pixel(i64* %0, %struct.arg* %1, i32 %2, double %3, double %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i64* %0, i64** %6, align 8
  store %struct.arg* %1, %struct.arg** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  br label %16

16:                                               ; preds = %25, %5
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load double, double* %14, align 8
  %22 = fcmp une double %21, 1.000000e+00
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ]
  br i1 %24, label %25, label %76

25:                                               ; preds = %23
  %26 = load %struct.arg*, %struct.arg** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.arg, %struct.arg* %26, i64 %28
  %30 = load double, double* %9, align 8
  %31 = load double, double* %10, align 8
  %32 = call i32 @alpha_calc(%struct.arg* %29, double %30, double %31)
  %33 = sitofp i32 %32 to double
  %34 = load double, double* %14, align 8
  %35 = fsub double 1.000000e+00, %34
  %36 = fmul double %33, %35
  store double %36, double* %15, align 8
  %37 = load double, double* %15, align 8
  %38 = load %struct.arg*, %struct.arg** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.arg, %struct.arg* %38, i64 %40
  %42 = getelementptr inbounds %struct.arg, %struct.arg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fmul double %37, %45
  %47 = load double, double* %11, align 8
  %48 = fadd double %47, %46
  store double %48, double* %11, align 8
  %49 = load double, double* %15, align 8
  %50 = load %struct.arg*, %struct.arg** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.arg, %struct.arg* %50, i64 %52
  %54 = getelementptr inbounds %struct.arg, %struct.arg* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fmul double %49, %57
  %59 = load double, double* %12, align 8
  %60 = fadd double %59, %58
  store double %60, double* %12, align 8
  %61 = load double, double* %15, align 8
  %62 = load %struct.arg*, %struct.arg** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.arg, %struct.arg* %62, i64 %64
  %66 = getelementptr inbounds %struct.arg, %struct.arg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load double, double* %68, align 8
  %70 = fmul double %61, %69
  %71 = load double, double* %13, align 8
  %72 = fadd double %71, %70
  store double %72, double* %13, align 8
  %73 = load double, double* %15, align 8
  %74 = load double, double* %14, align 8
  %75 = fadd double %74, %73
  store double %75, double* %14, align 8
  br label %16

76:                                               ; preds = %23
  %77 = load double, double* %14, align 8
  %78 = fcmp ogt double %77, 0.000000e+00
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load double, double* %14, align 8
  %81 = fcmp ogt double %80, 1.000000e+00
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load double, double* %11, align 8
  %84 = fcmp ogt double %83, 1.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store double 1.000000e+00, double* %11, align 8
  br label %86

86:                                               ; preds = %85, %82
  %87 = load double, double* %12, align 8
  %88 = fcmp ogt double %87, 1.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store double 1.000000e+00, double* %12, align 8
  br label %90

90:                                               ; preds = %89, %86
  %91 = load double, double* %13, align 8
  %92 = fcmp ogt double %91, 1.000000e+00
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store double 1.000000e+00, double* %13, align 8
  br label %94

94:                                               ; preds = %93, %90
  store double 1.000000e+00, double* %14, align 8
  br label %95

95:                                               ; preds = %94, %79
  %96 = load double, double* %11, align 8
  %97 = fmul double %96, 6.553500e+04
  %98 = call i64 @round(double %97)
  %99 = load i64*, i64** %6, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %98, i64* %100, align 8
  %101 = load double, double* %12, align 8
  %102 = fmul double %101, 6.553500e+04
  %103 = call i64 @round(double %102)
  %104 = load i64*, i64** %6, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 %103, i64* %105, align 8
  %106 = load double, double* %13, align 8
  %107 = fmul double %106, 6.553500e+04
  %108 = call i64 @round(double %107)
  %109 = load i64*, i64** %6, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  store i64 %108, i64* %110, align 8
  %111 = load double, double* %14, align 8
  %112 = fmul double %111, 6.553500e+04
  %113 = call i64 @round(double %112)
  %114 = load i64*, i64** %6, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 3
  store i64 %113, i64* %115, align 8
  br label %125

116:                                              ; preds = %76
  %117 = load i64*, i64** %6, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  store i64 0, i64* %118, align 8
  %119 = load i64*, i64** %6, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 0, i64* %120, align 8
  %121 = load i64*, i64** %6, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 2
  store i64 0, i64* %122, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %116, %95
  ret void
}

declare dso_local i32 @alpha_calc(%struct.arg*, double, double) #1

declare dso_local i64 @round(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
