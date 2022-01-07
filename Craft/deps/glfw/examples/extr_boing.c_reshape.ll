; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_reshape.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, float }

@GL_PROJECTION = common dso_local global i32 0, align 4
@RADIUS = common dso_local global i32 0, align 4
@VIEW_SCENE_DIST = common dso_local global float 0.000000e+00, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@__const.reshape.up = private unnamed_addr constant %struct.TYPE_5__ { float 0.000000e+00, float -1.000000e+00, float 0.000000e+00 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reshape(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca { <2 x float>, float }, align 4
  %14 = alloca { <2 x float>, float }, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @glViewport(i32 0, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* @GL_PROJECTION, align 4
  %19 = call i32 @glMatrixMode(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @RADIUS, align 4
  %22 = call i64 @atan2(i32 %21, float 2.000000e+02)
  %23 = sitofp i64 %22 to float
  %24 = fmul float 2.000000e+00, %23
  %25 = load i32, i32* %5, align 4
  %26 = sitofp i32 %25 to float
  %27 = load i32, i32* %6, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  %30 = load float, float* @VIEW_SCENE_DIST, align 4
  %31 = call i32 @mat4x4_perspective(i64 %20, float %24, float %29, float 1.000000e+00, float %30)
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @glLoadMatrixf(i32* %33)
  %35 = load i32, i32* @GL_MODELVIEW, align 4
  %36 = call i32 @glMatrixMode(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store float 0.000000e+00, float* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %40 = load float, float* @VIEW_SCENE_DIST, align 4
  store float %40, float* %39, align 4
  %41 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 12, i1 false)
  %42 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.TYPE_5__* @__const.reshape.up to i8*), i64 12, i1 false)
  %43 = load i64, i64* %8, align 8
  %44 = bitcast { <2 x float>, float }* %12 to i8*
  %45 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 12, i1 false)
  %46 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  %47 = load <2 x float>, <2 x float>* %46, align 4
  %48 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = bitcast { <2 x float>, float }* %13 to i8*
  %51 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  %52 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 0
  %53 = load <2 x float>, <2 x float>* %52, align 4
  %54 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = bitcast { <2 x float>, float }* %14 to i8*
  %57 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %14, i32 0, i32 0
  %59 = load <2 x float>, <2 x float>* %58, align 4
  %60 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %14, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = call i32 @mat4x4_look_at(i64 %43, <2 x float> %47, float %49, <2 x float> %53, float %55, <2 x float> %59, float %61)
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @glLoadMatrixf(i32* %64)
  ret void
}

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @mat4x4_perspective(i64, float, float, float, float) #1

declare dso_local i64 @atan2(i32, float) #1

declare dso_local i32 @glLoadMatrixf(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mat4x4_look_at(i64, <2 x float>, float, <2 x float>, float, <2 x float>, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
