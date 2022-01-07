; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_cube.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blocks = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_cube(float* %0, [4 x float]* %1, [4 x float]* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, float %9, float %10, float %11, float %12, i32 %13) #0 {
  %15 = alloca float*, align 8
  %16 = alloca [4 x float]*, align 8
  %17 = alloca [4 x float]*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store float* %0, float** %15, align 8
  store [4 x float]* %1, [4 x float]** %16, align 8
  store [4 x float]* %2, [4 x float]** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store float %9, float* %24, align 4
  store float %10, float* %25, align 4
  store float %11, float* %26, align 4
  store float %12, float* %27, align 4
  store i32 %13, i32* %28, align 4
  %35 = load i32**, i32*** @blocks, align 8
  %36 = load i32, i32* %28, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %29, align 4
  %42 = load i32**, i32*** @blocks, align 8
  %43 = load i32, i32* %28, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %30, align 4
  %49 = load i32**, i32*** @blocks, align 8
  %50 = load i32, i32* %28, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %31, align 4
  %56 = load i32**, i32*** @blocks, align 8
  %57 = load i32, i32* %28, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %32, align 4
  %63 = load i32**, i32*** @blocks, align 8
  %64 = load i32, i32* %28, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %33, align 4
  %70 = load i32**, i32*** @blocks, align 8
  %71 = load i32, i32* %28, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %34, align 4
  %77 = load float*, float** %15, align 8
  %78 = load [4 x float]*, [4 x float]** %16, align 8
  %79 = bitcast [4 x float]* %78 to float**
  %80 = load [4 x float]*, [4 x float]** %17, align 8
  %81 = bitcast [4 x float]* %80 to float**
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %29, align 4
  %89 = load i32, i32* %30, align 4
  %90 = load i32, i32* %31, align 4
  %91 = load i32, i32* %32, align 4
  %92 = load i32, i32* %33, align 4
  %93 = load i32, i32* %34, align 4
  %94 = load float, float* %24, align 4
  %95 = load float, float* %25, align 4
  %96 = load float, float* %26, align 4
  %97 = load float, float* %27, align 4
  %98 = call i32 @make_cube_faces(float* %77, float** %79, float** %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, float %94, float %95, float %96, float %97)
  ret void
}

declare dso_local i32 @make_cube_faces(float*, float**, float**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
