; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac1.c_at1_subband_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac1.c_at1_subband_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float** }
%struct.TYPE_5__ = type { float*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, float*)* @at1_subband_synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at1_subband_synthesis(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca [256 x float], align 16
  %8 = alloca [558 x float], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store float* %2, float** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load float**, float*** %10, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 0
  %13 = load float*, float** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 1
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds [256 x float], [256 x float]* %7, i64 0, i64 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [558 x float], [558 x float]* %8, i64 0, i64 0
  %24 = call i32 @ff_atrac_iqmf(float* %13, float* %18, i32 128, float* %19, i32 %22, float* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 256
  %32 = call i32 @memcpy(float* %27, float* %31, i32 156)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 39
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load float**, float*** %38, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 2
  %41 = load float*, float** %40, align 8
  %42 = call i32 @memcpy(float* %36, float* %41, i32 1024)
  %43 = getelementptr inbounds [256 x float], [256 x float]* %7, i64 0, i64 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = load float*, float** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [558 x float], [558 x float]* %8, i64 0, i64 0
  %52 = call i32 @ff_atrac_iqmf(float* %43, float* %46, i32 256, float* %47, i32 %50, float* %51)
  ret void
}

declare dso_local i32 @ff_atrac_iqmf(float*, float*, i32, float*, i32, float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
