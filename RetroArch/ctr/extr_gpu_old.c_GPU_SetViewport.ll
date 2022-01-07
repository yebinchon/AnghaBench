; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetViewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_gpu_old.c_GPU_SetViewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPUREG_FRAMEBUFFER_FLUSH = common dso_local global i32 0, align 4
@GPUREG_FRAMEBUFFER_INVALIDATE = common dso_local global i32 0, align 4
@GPUREG_DEPTHBUFFER_LOC = common dso_local global i32 0, align 4
@GPUREG_RENDERBUF_DIM = common dso_local global i32 0, align 4
@GPUREG_DEPTHBUFFER_FORMAT = common dso_local global i32 0, align 4
@GPUREG_COLORBUFFER_FORMAT = common dso_local global i32 0, align 4
@GPUREG_FRAMEBUFFER_BLOCK32 = common dso_local global i32 0, align 4
@GPUREG_VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@GPUREG_VIEWPORT_XY = common dso_local global i32 0, align 4
@GPUREG_SCISSORTEST_MODE = common dso_local global i32 0, align 4
@GPUREG_COLORBUFFER_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GPU_SetViewport(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sitofp i32 %17 to float
  store float %18, float* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = sitofp i32 %19 to float
  store float %20, float* %15, align 4
  %21 = load i32, i32* @GPUREG_FRAMEBUFFER_FLUSH, align 4
  %22 = call i32 @GPUCMD_AddWrite(i32 %21, i32 1)
  %23 = load i32, i32* @GPUREG_FRAMEBUFFER_INVALIDATE, align 4
  %24 = call i32 @GPUCMD_AddWrite(i32 %23, i32 1)
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %26, 4095
  %28 = shl i32 %27, 12
  %29 = or i32 16777216, %28
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 4095
  %32 = or i32 %29, %31
  store i32 %32, i32* %16, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = ashr i32 %34, 3
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i32*, i32** %8, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = ashr i32 %38, 3
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @GPUREG_DEPTHBUFFER_LOC, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %45 = call i32 @GPUCMD_AddIncrementalWrites(i32 %43, i32* %44, i32 3)
  %46 = load i32, i32* @GPUREG_RENDERBUF_DIM, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @GPUCMD_AddWrite(i32 %46, i32 %47)
  %49 = load i32, i32* @GPUREG_DEPTHBUFFER_FORMAT, align 4
  %50 = call i32 @GPUCMD_AddWrite(i32 %49, i32 3)
  %51 = load i32, i32* @GPUREG_COLORBUFFER_FORMAT, align 4
  %52 = call i32 @GPUCMD_AddWrite(i32 %51, i32 2)
  %53 = load i32, i32* @GPUREG_FRAMEBUFFER_BLOCK32, align 4
  %54 = call i32 @GPUCMD_AddWrite(i32 %53, i32 0)
  %55 = load float, float* %14, align 4
  %56 = fdiv float %55, 2.000000e+00
  %57 = call i32 @f32tof24(float %56)
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = load float, float* %14, align 4
  %60 = fdiv float 2.000000e+00, %59
  %61 = call i32 @f32tof31(float %60)
  %62 = shl i32 %61, 1
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load float, float* %15, align 4
  %65 = fdiv float %64, 2.000000e+00
  %66 = call i32 @f32tof24(float %65)
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %66, i32* %67, align 8
  %68 = load float, float* %15, align 4
  %69 = fdiv float 2.000000e+00, %68
  %70 = call i32 @f32tof31(float %69)
  %71 = shl i32 %70, 1
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @GPUREG_VIEWPORT_WIDTH, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %75 = call i32 @GPUCMD_AddIncrementalWrites(i32 %73, i32* %74, i32 4)
  %76 = load i32, i32* @GPUREG_VIEWPORT_XY, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 16
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 65535
  %81 = or i32 %78, %80
  %82 = call i32 @GPUCMD_AddWrite(i32 %76, i32 %81)
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %83, align 16
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 1
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %89, 65535
  %91 = or i32 %87, %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* @GPUREG_SCISSORTEST_MODE, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %95 = call i32 @GPUCMD_AddIncrementalWrites(i32 %93, i32* %94, i32 3)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 15, i32* %96, align 16
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 15, i32* %97, align 4
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 2, i32* %98, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 2, i32* %99, align 4
  %100 = load i32, i32* @GPUREG_COLORBUFFER_READ, align 4
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %102 = call i32 @GPUCMD_AddIncrementalWrites(i32 %100, i32* %101, i32 4)
  ret void
}

declare dso_local i32 @GPUCMD_AddWrite(i32, i32) #1

declare dso_local i32 @GPUCMD_AddIncrementalWrites(i32, i32*, i32) #1

declare dso_local i32 @f32tof24(float) #1

declare dso_local i32 @f32tof31(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
