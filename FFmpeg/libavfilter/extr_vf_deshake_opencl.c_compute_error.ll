; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_compute_error.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_compute_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, double*, float*)* @compute_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_error(%struct.TYPE_7__* %0, i32 %1, double* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca float*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store float* %3, float** %8, align 8
  %20 = load double*, double** %7, align 8
  %21 = getelementptr inbounds double, double* %20, i64 0
  %22 = load double, double* %21, align 8
  store double %22, double* %9, align 8
  %23 = load double*, double** %7, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  %25 = load double, double* %24, align 8
  store double %25, double* %10, align 8
  %26 = load double*, double** %7, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  store double %28, double* %11, align 8
  %29 = load double*, double** %7, align 8
  %30 = getelementptr inbounds double, double* %29, i64 3
  %31 = load double, double* %30, align 8
  store double %31, double* %12, align 8
  %32 = load double*, double** %7, align 8
  %33 = getelementptr inbounds double, double* %32, i64 4
  %34 = load double, double* %33, align 8
  store double %34, double* %13, align 8
  %35 = load double*, double** %7, align 8
  %36 = getelementptr inbounds double, double* %35, i64 5
  %37 = load double, double* %36, align 8
  store double %37, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %113, %4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %16, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %17, align 8
  %55 = load double, double* %9, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load double*, double** %57, align 8
  %59 = getelementptr inbounds double, double* %58, i64 0
  %60 = load double, double* %59, align 8
  %61 = fmul double %55, %60
  %62 = load double, double* %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = getelementptr inbounds double, double* %65, i64 1
  %67 = load double, double* %66, align 8
  %68 = fmul double %62, %67
  %69 = fadd double %61, %68
  %70 = load double, double* %11, align 8
  %71 = fadd double %69, %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = fsub double %71, %76
  store double %77, double* %18, align 8
  %78 = load double, double* %12, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  %82 = getelementptr inbounds double, double* %81, i64 0
  %83 = load double, double* %82, align 8
  %84 = fmul double %78, %83
  %85 = load double, double* %13, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load double*, double** %87, align 8
  %89 = getelementptr inbounds double, double* %88, i64 1
  %90 = load double, double* %89, align 8
  %91 = fmul double %85, %90
  %92 = fadd double %84, %91
  %93 = load double, double* %14, align 8
  %94 = fadd double %92, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load double*, double** %96, align 8
  %98 = getelementptr inbounds double, double* %97, i64 1
  %99 = load double, double* %98, align 8
  %100 = fsub double %94, %99
  store double %100, double* %19, align 8
  %101 = load double, double* %18, align 8
  %102 = load double, double* %18, align 8
  %103 = fmul double %101, %102
  %104 = load double, double* %19, align 8
  %105 = load double, double* %19, align 8
  %106 = fmul double %104, %105
  %107 = fadd double %103, %106
  %108 = fptrunc double %107 to float
  %109 = load float*, float** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  store float %108, float* %112, align 4
  br label %113

113:                                              ; preds = %42
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %38

116:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
