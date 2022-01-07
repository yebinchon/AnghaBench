; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_draw_icon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_draw_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, float, i32, i32, i32* }
%struct.TYPE_8__ = type { float, i32, i32, i32, float, float, i64, %struct.TYPE_6__, i32, i32*, %struct.video_coords* }
%struct.TYPE_6__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64, float, float, i32, i32, float, float, float*)* @materialui_draw_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_draw_icon(i32* %0, i32 %1, i64 %2, float %3, float %4, i32 %5, i32 %6, float %7, float %8, float* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca %struct.TYPE_7__, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca %struct.video_coords, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store float* %9, float** %20, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @menu_display_blend_begin(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  store i32* %24, i32** %27, align 8
  %28 = load float, float* %18, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store float %28, float* %29, align 8
  %30 = load float, float* %19, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store float %30, float* %31, align 4
  %32 = load float, float* %19, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store float %32, float* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i32 1, i32* %35, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @menu_display_rotate_z(%struct.TYPE_7__* %21, i32* %36)
  %38 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load float*, float** %20, align 8
  %43 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 1
  store float* %42, float** %43, align 8
  %44 = load float, float* %14, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store float %44, float* %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = uitofp i32 %46 to float
  %48 = load float, float* %15, align 4
  %49 = fsub float %47, %48
  %50 = load i32, i32* %12, align 4
  %51 = uitofp i32 %50 to float
  %52 = fsub float %49, %51
  %53 = fptoui float %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load float, float* %19, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store float %59, float* %60, align 8
  %61 = load float, float* %18, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  store float %61, float* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 10
  store %struct.video_coords* %23, %struct.video_coords** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 9
  store i32* %24, i32** %64, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 6
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @menu_display_draw(%struct.TYPE_8__* %22, i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @menu_display_blend_end(i32* %73)
  ret void
}

declare dso_local i32 @menu_display_blend_begin(i32*) #1

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @menu_display_blend_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
