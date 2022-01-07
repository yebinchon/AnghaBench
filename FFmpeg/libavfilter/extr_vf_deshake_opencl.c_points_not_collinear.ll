; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_points_not_collinear.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_points_not_collinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**)* @points_not_collinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @points_not_collinear(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 2, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %112, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %115

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  %24 = load double, double* %23, align 8
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  %34 = fsub double %24, %33
  store double %34, double* %7, align 8
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load double*, double** %49, align 8
  %51 = getelementptr inbounds double, double* %50, i64 1
  %52 = load double, double* %51, align 8
  %53 = fsub double %43, %52
  store double %53, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %108, %15
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %54
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = getelementptr inbounds double, double* %65, i64 0
  %67 = load double, double* %66, align 8
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = fsub double %67, %76
  store double %77, double* %9, align 8
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %78, i64 %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load double*, double** %83, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  %86 = load double, double* %85, align 8
  %87 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %87, i64 %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load double*, double** %92, align 8
  %94 = getelementptr inbounds double, double* %93, i64 1
  %95 = load double, double* %94, align 8
  %96 = fsub double %86, %95
  store double %96, double* %10, align 8
  %97 = load double, double* %9, align 8
  %98 = load double, double* %8, align 8
  %99 = fmul double %97, %98
  %100 = load double, double* %10, align 8
  %101 = load double, double* %7, align 8
  %102 = fmul double %100, %101
  %103 = fsub double %99, %102
  %104 = call double @llvm.fabs.f64(double %103)
  %105 = fcmp ole double %104, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %58
  store i32 0, i32* %2, align 4
  br label %116

107:                                              ; preds = %58
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %54

111:                                              ; preds = %54
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %11

115:                                              ; preds = %11
  store i32 1, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %106
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
