; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_apply_independent_coupling.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_apply_independent_coupling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 (float*, float*, float, i32)* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { float* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { float* }
%struct.TYPE_15__ = type { float** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32)* @apply_independent_coupling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_independent_coupling(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float*, float** %16, i64 %18
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  %22 = load float, float* %21, align 4
  store float %22, float* %9, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  store float* %28, float** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %11, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = shl i32 1024, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32 (float*, float*, float, i32)*, i32 (float*, float*, float, i32)** %45, align 8
  %47 = load float*, float** %11, align 8
  %48 = load float*, float** %10, align 8
  %49 = load float, float* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 %46(float* %47, float* %48, float %49, i32 %50)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
