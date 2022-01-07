; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_bg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_draw_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_coords = type { i32, float*, float*, float*, float* }
%struct.TYPE_5__ = type { float* (...)*, float* (...)*, i64 (i32*)* }
%struct.TYPE_4__ = type { float*, float*, float, float, i32*, i64, i64, %struct.video_coords*, i64 }

@menu_display_draw_bg.coords = internal global %struct.video_coords zeroinitializer, align 8
@menu_disp = common dso_local global %struct.TYPE_5__* null, align 8
@menu_display_white_texture = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_draw_bg(%struct.TYPE_4__* %0, i32* %1, i32 %2, float %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  store float* null, float** %9, align 8
  store float* null, float** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %4
  br label %97

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  store float* %20, float** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  store float* %23, float** %10, align 8
  %24 = load float*, float** %9, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load float* (...)*, float* (...)** %28, align 8
  %30 = call float* (...) %29()
  store float* %30, float** %9, align 8
  br label %31

31:                                               ; preds = %26, %17
  %32 = load float*, float** %10, align 8
  %33 = icmp ne float* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load float* (...)*, float* (...)** %36, align 8
  %38 = call float* (...) %37()
  store float* %38, float** %10, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* getelementptr inbounds (%struct.video_coords, %struct.video_coords* @menu_display_draw_bg.coords, i32 0, i32 0), align 8
  %44 = load float*, float** %9, align 8
  store float* %44, float** getelementptr inbounds (%struct.video_coords, %struct.video_coords* @menu_display_draw_bg.coords, i32 0, i32 1), align 8
  %45 = load float*, float** %10, align 8
  store float* %45, float** getelementptr inbounds (%struct.video_coords, %struct.video_coords* @menu_display_draw_bg.coords, i32 0, i32 2), align 8
  %46 = load float*, float** %10, align 8
  store float* %46, float** getelementptr inbounds (%struct.video_coords, %struct.video_coords* @menu_display_draw_bg.coords, i32 0, i32 3), align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to float*
  store float* %50, float** getelementptr inbounds (%struct.video_coords, %struct.video_coords* @menu_display_draw_bg.coords, i32 0, i32 4), align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  store %struct.video_coords* @menu_display_draw_bg.coords, %struct.video_coords** %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store float 1.000000e+00, float* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store float 0.000000e+00, float* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load float, float* %8, align 4
  %70 = call i32 @menu_display_set_alpha(i64 %68, float %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @menu_display_white_texture, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64 (i32*)*, i64 (i32*)** %85, align 8
  %87 = icmp ne i64 (i32*)* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_disp, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64 (i32*)*, i64 (i32*)** %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 %91(i32* %92)
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %16, %88, %83, %80
  ret void
}

declare dso_local i32 @menu_display_set_alpha(i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
