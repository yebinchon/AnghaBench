; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_push_quad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_push_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float* (...)* }
%struct.TYPE_4__ = type { float*, float*, float*, float*, i32 }

@menu_disp_ca = common dso_local global i32 0, align 4
@menu_disp = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_push_quad(i32 %0, i32 %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x float], align 16
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store float* null, float** %17, align 8
  store i32* @menu_disp_ca, i32** %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sitofp i32 %19 to float
  %21 = load i32, i32* %8, align 4
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %20, %22
  %24 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 0
  store float %23, float* %24, align 16
  %25 = load i32, i32* %12, align 4
  %26 = sitofp i32 %25 to float
  %27 = load i32, i32* %9, align 4
  %28 = uitofp i32 %27 to float
  %29 = fdiv float %26, %28
  %30 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 1
  store float %29, float* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sitofp i32 %31 to float
  %33 = load i32, i32* %8, align 4
  %34 = uitofp i32 %33 to float
  %35 = fdiv float %32, %34
  %36 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 2
  store float %35, float* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sitofp i32 %37 to float
  %39 = load i32, i32* %9, align 4
  %40 = uitofp i32 %39 to float
  %41 = fdiv float %38, %40
  %42 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 3
  store float %41, float* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sitofp i32 %43 to float
  %45 = load i32, i32* %8, align 4
  %46 = uitofp i32 %45 to float
  %47 = fdiv float %44, %46
  %48 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 4
  store float %47, float* %48, align 16
  %49 = load i32, i32* %14, align 4
  %50 = sitofp i32 %49 to float
  %51 = load i32, i32* %9, align 4
  %52 = uitofp i32 %51 to float
  %53 = fdiv float %50, %52
  %54 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 5
  store float %53, float* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sitofp i32 %55 to float
  %57 = load i32, i32* %8, align 4
  %58 = uitofp i32 %57 to float
  %59 = fdiv float %56, %58
  %60 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 6
  store float %59, float* %60, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sitofp i32 %61 to float
  %63 = load i32, i32* %9, align 4
  %64 = uitofp i32 %63 to float
  %65 = fdiv float %62, %64
  %66 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 7
  store float %65, float* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %7
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load float* (...)*, float* (...)** %71, align 8
  %73 = icmp ne float* (...)* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load float* (...)*, float* (...)** %76, align 8
  %78 = call float* (...) %77()
  store float* %78, float** %17, align 8
  br label %79

79:                                               ; preds = %74, %69, %7
  %80 = load float*, float** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store float* %80, float** %81, align 8
  %82 = getelementptr inbounds [8 x float], [8 x float]* %15, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store float* %82, float** %83, align 8
  %84 = load float*, float** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store float* %84, float** %85, align 8
  %86 = load float*, float** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store float* %86, float** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  store i32 3, i32* %88, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = call i32 @video_coord_array_append(i32* %89, %struct.TYPE_4__* %16, i32 3)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 4
  store float* %93, float** %91, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  store float* %96, float** %94, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float* %99, float** %97, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  store float* %102, float** %100, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @video_coord_array_append(i32* %103, %struct.TYPE_4__* %16, i32 3)
  ret void
}

declare dso_local i32 @video_coord_array_append(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
