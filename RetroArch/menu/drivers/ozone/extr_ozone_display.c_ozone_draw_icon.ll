; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_icon.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, float, float, i32, i32, i32* }
%struct.TYPE_8__ = type { float, i32, i32, i32, float, float, i64, %struct.TYPE_6__, i32, i32*, %struct.video_coords* }
%struct.TYPE_6__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@ozone_pure_white = common dso_local global float* null, align 8
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_draw_icon(i32* %0, i32 %1, i32 %2, i64 %3, float %4, float %5, i32 %6, i32 %7, float %8, float %9, float* %10) #0 {
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
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  store i32* %26, i32** %27, align 8
  %28 = load float, float* %20, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store float %28, float* %29, align 8
  %30 = load float, float* %21, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store float %30, float* %31, align 4
  %32 = load float, float* %21, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store float %32, float* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  store i32 1, i32* %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @menu_display_rotate_z(%struct.TYPE_7__* %23, i32* %36)
  %38 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load float*, float** %22, align 8
  %43 = icmp ne float* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %11
  %45 = load float*, float** %22, align 8
  br label %48

46:                                               ; preds = %11
  %47 = load float*, float** @ozone_pure_white, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi float* [ %45, %44 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %25, i32 0, i32 1
  store float* %49, float** %50, align 8
  %51 = load float, float* %16, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store float %51, float* %52, align 8
  %53 = load i32, i32* %19, align 4
  %54 = uitofp i32 %53 to float
  %55 = load float, float* %17, align 4
  %56 = fsub float %54, %55
  %57 = load i32, i32* %14, align 4
  %58 = uitofp i32 %57 to float
  %59 = fsub float %56, %58
  %60 = fptoui float %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load float, float* %21, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store float %66, float* %67, align 8
  %68 = load float, float* %20, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  store float %68, float* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 10
  store %struct.video_coords* %25, %struct.video_coords** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 9
  store i32* %26, i32** %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 6
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @menu_display_draw(%struct.TYPE_8__* %24, i32* %78)
  ret void
}

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
