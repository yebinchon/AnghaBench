; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_process_param.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_process_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

@NBANDS = common dso_local global i32 0, align 4
@bands = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, %struct.TYPE_3__*, float)* @process_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_param(float* %0, %struct.TYPE_3__* %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store float %2, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %58, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NBANDS, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %23

16:                                               ; preds = %12
  %17 = load float*, float** @bands, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %17, i64 %20
  %22 = load float, float* %21, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = phi float [ 0.000000e+00, %15 ], [ %22, %16 ]
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store float %24, float* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NBANDS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load float, float* %6, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load float*, float** @bands, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = load float, float* %39, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = phi float [ %34, %33 ], [ %40, %35 ]
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store float %42, float* %47, align 4
  %48 = load float*, float** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store float %52, float* %57, align 4
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %8

61:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
