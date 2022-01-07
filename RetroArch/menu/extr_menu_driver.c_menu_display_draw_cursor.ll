; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_11__ = type { float, i32, float, float, i64, %struct.TYPE_9__, i32, i32*, %struct.video_coords* }
%struct.TYPE_9__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@menu_display_has_windowed = common dso_local global i32 0, align 4
@menu_disp = common dso_local global %struct.TYPE_12__* null, align 8
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_draw_cursor(i32* %0, float* %1, float %2, i64 %3, float %4, float %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.video_coords, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store float* %1, float** %10, align 8
  store float %2, float* %11, align 4
  store i64 %3, i64* %12, align 8
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %19, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* @menu_display_has_windowed, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %8
  %32 = phi i1 [ true, %8 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %31
  br label %105

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %18, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %18, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %18, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %18, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load float*, float** %10, align 8
  %49 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %18, i32 0, i32 1
  store float* %48, float** %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = icmp ne i32 (i32*)* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32 (i32*)*, i32 (i32*)** %59, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 %60(i32* %61)
  br label %63

63:                                               ; preds = %57, %52, %43
  %64 = load float, float* %13, align 4
  %65 = load float, float* %11, align 4
  %66 = fdiv float %65, 2.000000e+00
  %67 = fsub float %64, %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store float %67, float* %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %14, align 4
  %72 = fsub float %70, %71
  %73 = load float, float* %11, align 4
  %74 = fdiv float %73, 2.000000e+00
  %75 = fsub float %72, %74
  %76 = fptosi float %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load float, float* %11, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store float %78, float* %79, align 8
  %80 = load float, float* %11, align 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  store float %80, float* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 8
  store %struct.video_coords* %18, %struct.video_coords** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 7
  store i32* null, i32** %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @menu_display_draw(%struct.TYPE_11__* %17, i32* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %63
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32 (i32*)*, i32 (i32*)** %96, align 8
  %98 = icmp ne i32 (i32*)* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @menu_disp, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32 (i32*)*, i32 (i32*)** %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 %102(i32* %103)
  br label %105

105:                                              ; preds = %42, %99, %94, %63
  ret void
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
