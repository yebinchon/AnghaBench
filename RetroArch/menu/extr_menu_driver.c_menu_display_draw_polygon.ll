; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_polygon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_6__ = type { i32, i32, float, float, %struct.TYPE_5__, i32, i32, i32*, %struct.video_coords*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.video_coords = type { i32, float*, float*, i32*, i32* }

@menu_disp = common dso_local global %struct.TYPE_7__* null, align 8
@menu_display_white_texture = common dso_local global i32 0, align 4
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_draw_polygon(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, float* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca %struct.TYPE_6__, align 8
  %26 = alloca %struct.video_coords, align 8
  %27 = alloca [8 x float], align 16
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store float* %11, float** %24, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sitofp i32 %28 to float
  %30 = load i32, i32* %22, align 4
  %31 = uitofp i32 %30 to float
  %32 = fdiv float %29, %31
  %33 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 0
  store float %32, float* %33, align 16
  %34 = load i32, i32* %15, align 4
  %35 = sitofp i32 %34 to float
  %36 = load i32, i32* %23, align 4
  %37 = uitofp i32 %36 to float
  %38 = fdiv float %35, %37
  %39 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 1
  store float %38, float* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = sitofp i32 %40 to float
  %42 = load i32, i32* %22, align 4
  %43 = uitofp i32 %42 to float
  %44 = fdiv float %41, %43
  %45 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 2
  store float %44, float* %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sitofp i32 %46 to float
  %48 = load i32, i32* %23, align 4
  %49 = uitofp i32 %48 to float
  %50 = fdiv float %47, %49
  %51 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 3
  store float %50, float* %51, align 4
  %52 = load i32, i32* %18, align 4
  %53 = sitofp i32 %52 to float
  %54 = load i32, i32* %22, align 4
  %55 = uitofp i32 %54 to float
  %56 = fdiv float %53, %55
  %57 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 4
  store float %56, float* %57, align 16
  %58 = load i32, i32* %19, align 4
  %59 = sitofp i32 %58 to float
  %60 = load i32, i32* %23, align 4
  %61 = uitofp i32 %60 to float
  %62 = fdiv float %59, %61
  %63 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 5
  store float %62, float* %63, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sitofp i32 %64 to float
  %66 = load i32, i32* %22, align 4
  %67 = uitofp i32 %66 to float
  %68 = fdiv float %65, %67
  %69 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 6
  store float %68, float* %69, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sitofp i32 %70 to float
  %72 = load i32, i32* %23, align 4
  %73 = uitofp i32 %72 to float
  %74 = fdiv float %71, %73
  %75 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 7
  store float %74, float* %75, align 4
  %76 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %26, i32 0, i32 0
  store i32 4, i32* %76, align 8
  %77 = getelementptr inbounds [8 x float], [8 x float]* %27, i64 0, i64 0
  %78 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %26, i32 0, i32 1
  store float* %77, float** %78, align 8
  %79 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %26, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %26, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = load float*, float** %24, align 8
  %82 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %26, i32 0, i32 2
  store float* %81, float** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %12
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32 (i32*)*, i32 (i32*)** %87, align 8
  %89 = icmp ne i32 (i32*)* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32 (i32*)*, i32 (i32*)** %92, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 %93(i32* %94)
  br label %96

96:                                               ; preds = %90, %85, %12
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 10
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 9
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* %22, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* %23, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  store %struct.video_coords* %26, %struct.video_coords** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @menu_display_white_texture, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store float 1.000000e+00, float* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store float 0.000000e+00, float* %112, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @menu_display_draw(%struct.TYPE_6__* %25, i32* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %116 = icmp ne %struct.TYPE_7__* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %96
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32 (i32*)*, i32 (i32*)** %119, align 8
  %121 = icmp ne i32 (i32*)* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @menu_disp, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (i32*)*, i32 (i32*)** %124, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 %125(i32* %126)
  br label %128

128:                                              ; preds = %122, %117, %96
  ret void
}

declare dso_local i32 @menu_display_draw(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
