; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_icon_blend.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_icon_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, float, i32, i32, i32* }
%struct.TYPE_8__ = type { float, i32, i32, i32, float, float, i64, %struct.TYPE_6__, i32, i32*, %struct.video_coords* }
%struct.TYPE_6__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64, float, float, i32, i32, float, float, float*)* @menu_widgets_draw_icon_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_draw_icon_blend(i32* %0, i32 %1, i32 %2, i64 %3, float %4, float %5, i32 %6, i32 %7, float %8, float %9, float* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca %struct.TYPE_7__, align 8
  %24 = alloca %struct.TYPE_8__, align 8
  %25 = alloca %struct.video_coords, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store float* %10, float** %22, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %11
  br label %77

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  store i32* %26, i32** %31, align 8
  %32 = load float, float* %20, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store float %32, float* %33, align 8
  %34 = load float, float* %21, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store float %34, float* %35, align 4
  %36 = load float, float* %21, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store float %36, float* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  store i32 1, i32* %39, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @menu_display_rotate_z(%struct.TYPE_7__* %23, i32* %40)
  %42 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load float*, float** %22, align 8
  %47 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 1
  store float* %46, float** %47, align 8
  %48 = load float, float* %16, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store float %48, float* %49, align 8
  %50 = load i32, i32* %19, align 4
  %51 = uitofp i32 %50 to float
  %52 = load float, float* %17, align 4
  %53 = fsub float %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = uitofp i32 %54 to float
  %56 = fsub float %53, %55
  %57 = fptoui float %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load float, float* %21, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store float %63, float* %64, align 8
  %65 = load float, float* %20, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  store float %65, float* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 10
  store %struct.video_coords* %25, %struct.video_coords** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 9
  store i32* %26, i32** %68, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 6
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @menu_display_draw_blend(%struct.TYPE_8__* %24, i32* %75)
  br label %77

77:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @menu_display_draw_blend(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
