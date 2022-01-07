; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_pow_m1_4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmadec.c_pow_m1_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, float* }
%union.anon = type { float }

@LSP_POW_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_3__*, float)* @pow_m1_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @pow_m1_4(%struct.TYPE_3__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float %1, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = bitcast %union.anon* %5 to float*
  store float %11, float* %12, align 4
  %13 = bitcast %union.anon* %5 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 23
  store i32 %15, i32* %7, align 4
  %16 = bitcast %union.anon* %5 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LSP_POW_BITS, align 4
  %19 = sub nsw i32 23, %18
  %20 = lshr i32 %17, %19
  %21 = load i32, i32* @LSP_POW_BITS, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = bitcast %union.anon* %5 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LSP_POW_BITS, align 4
  %28 = shl i32 %26, %27
  %29 = and i32 %28, 8388607
  %30 = or i32 %29, 1065353216
  %31 = bitcast %union.anon* %6 to i32*
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  store float %38, float* %9, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  store float %45, float* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load float*, float** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float, float* %9, align 4
  %54 = load float, float* %10, align 4
  %55 = bitcast %union.anon* %6 to float*
  %56 = load float, float* %55, align 4
  %57 = fmul float %54, %56
  %58 = fadd float %53, %57
  %59 = fmul float %52, %58
  ret float %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
