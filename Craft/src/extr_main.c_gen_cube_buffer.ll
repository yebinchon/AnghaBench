; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_gen_cube_buffer.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_gen_cube_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.gen_cube_buffer.light = private unnamed_addr constant [6 x [4 x float]] [[4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_cube_buffer(float %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [6 x [4 x float]], align 16
  %13 = alloca [6 x [4 x float]], align 16
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32* @malloc_faces(i32 10, i32 6)
  store i32* %14, i32** %11, align 8
  %15 = bitcast [6 x [4 x float]]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 96, i1 false)
  %16 = bitcast [6 x [4 x float]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x [4 x float]]* @__const.gen_cube_buffer.light to i8*), i64 96, i1 false)
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %12, i64 0, i64 0
  %19 = bitcast [4 x float]* %18 to float**
  %20 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %13, i64 0, i64 0
  %21 = bitcast [4 x float]* %20 to float**
  %22 = load float, float* %6, align 4
  %23 = load float, float* %7, align 4
  %24 = load float, float* %8, align 4
  %25 = load float, float* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @make_cube(i32* %17, float** %19, float** %21, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, float %22, float %23, float %24, float %25, i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @gen_faces(i32 10, i32 6, i32* %28)
  ret i32 %29
}

declare dso_local i32* @malloc_faces(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @make_cube(i32*, float**, float**, i32, i32, i32, i32, i32, i32, float, float, float, float, i32) #1

declare dso_local i32 @gen_faces(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
