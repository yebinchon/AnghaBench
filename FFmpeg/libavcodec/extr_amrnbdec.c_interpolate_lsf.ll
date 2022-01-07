; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_interpolate_lsf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_interpolate_lsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (float*, float*, float*, double, double, i32)* }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*)* @interpolate_lsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_lsf(%struct.TYPE_3__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %8 = load i32, i32* @LP_FILTER_ORDER, align 4
  %9 = zext i32 %8 to i64
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %36, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (float*, float*, float*, double, double, i32)*, i32 (float*, float*, float*, double, double, i32)** %15, align 8
  %17 = load float*, float** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, %9
  %21 = getelementptr inbounds float, float* %17, i64 %20
  %22 = load float*, float** %5, align 8
  %23 = mul nsw i64 3, %9
  %24 = getelementptr inbounds float, float* %22, i64 %23
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 3, %26
  %28 = sitofp i32 %27 to double
  %29 = fmul double 2.500000e-01, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = sitofp i32 %31 to double
  %33 = fmul double 2.500000e-01, %32
  %34 = load i32, i32* @LP_FILTER_ORDER, align 4
  %35 = call i32 %16(float* %21, float* %24, float* %25, double %29, double %33, i32 %34)
  br label %36

36:                                               ; preds = %13
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %10

39:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
