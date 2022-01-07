; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_player.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_player.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.make_player.light = private unnamed_addr constant [6 x [4 x float]] [[4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000], [4 x float] [float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_player(float* %0, float %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [6 x [4 x float]], align 16
  %14 = alloca [6 x [4 x float]], align 16
  %15 = alloca [16 x float], align 16
  %16 = alloca [16 x float], align 16
  store float* %0, float** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %17 = bitcast [6 x [4 x float]]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 96, i1 false)
  %18 = bitcast [6 x [4 x float]]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([6 x [4 x float]]* @__const.make_player.light to i8*), i64 96, i1 false)
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %13, i64 0, i64 0
  %21 = bitcast [4 x float]* %20 to float**
  %22 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %14, i64 0, i64 0
  %23 = bitcast [4 x float]* %22 to float**
  %24 = call i32 @make_cube_faces(float* %19, float** %21, float** %23, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 226, i32 224, i32 241, i32 209, i32 225, i32 227, i32 0, i32 0, i32 0, double 4.000000e-01)
  %25 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %26 = call i32 @mat_identity(float* %25)
  %27 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %28 = load float, float* %11, align 4
  %29 = call i32 @mat_rotate(float* %27, i32 0, i32 1, i32 0, float %28)
  %30 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %31 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %32 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %33 = call i32 @mat_multiply(float* %30, float* %31, float* %32)
  %34 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %35 = load float, float* %11, align 4
  %36 = call i32 @cosf(float %35)
  %37 = load float, float* %11, align 4
  %38 = call i32 @sinf(float %37)
  %39 = load float, float* %12, align 4
  %40 = fneg float %39
  %41 = call i32 @mat_rotate(float* %34, i32 %36, i32 0, i32 %38, float %40)
  %42 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %43 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %44 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %45 = call i32 @mat_multiply(float* %42, float* %43, float* %44)
  %46 = load float*, float** %7, align 8
  %47 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %48 = call i32 @mat_apply(float* %46, float* %47, i32 36, i32 3, i32 10)
  %49 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %50 = load float, float* %8, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %10, align 4
  %53 = call i32 @mat_translate(float* %49, float %50, float %51, float %52)
  %54 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %55 = getelementptr inbounds [16 x float], [16 x float]* %16, i64 0, i64 0
  %56 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %57 = call i32 @mat_multiply(float* %54, float* %55, float* %56)
  %58 = load float*, float** %7, align 8
  %59 = getelementptr inbounds [16 x float], [16 x float]* %15, i64 0, i64 0
  %60 = call i32 @mat_apply(float* %58, float* %59, i32 36, i32 0, i32 10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @make_cube_faces(float*, float**, float**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double) #2

declare dso_local i32 @mat_identity(float*) #2

declare dso_local i32 @mat_rotate(float*, i32, i32, i32, float) #2

declare dso_local i32 @mat_multiply(float*, float*, float*) #2

declare dso_local i32 @cosf(float) #2

declare dso_local i32 @sinf(float) #2

declare dso_local i32 @mat_apply(float*, float*, i32, i32, i32) #2

declare dso_local i32 @mat_translate(float*, float, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
