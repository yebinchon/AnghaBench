; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_thumbnail.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { float }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i32* }
%struct.TYPE_16__ = type { float, float, i64, float, float, %struct.TYPE_12__, i32, i32*, %struct.video_coords* }
%struct.TYPE_12__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@coord_shadow = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, float*, i32, i32, float, float, float, float, i64)* @xmb_draw_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_thumbnail(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, float* %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__, align 8
  %22 = alloca %struct.TYPE_16__, align 8
  %23 = alloca %struct.video_coords, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %12, align 8
  store float* %2, float** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store i64 %9, i64* %20, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 5
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = call i32 @menu_display_rotate_z(%struct.TYPE_15__* %21, %struct.TYPE_14__* %31)
  %33 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load float, float* %18, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store float %37, float* %38, align 8
  %39 = load float, float* %19, align 4
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  store float %39, float* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 8
  store %struct.video_coords* %23, %struct.video_coords** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 7
  store i32* %24, i32** %42, align 8
  %43 = load i64, i64* %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %10
  %54 = load float*, float** @coord_shadow, align 8
  %55 = load float*, float** %13, align 8
  %56 = getelementptr inbounds float, float* %55, i64 3
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, 0x3FD6666660000000
  %59 = call i32 @menu_display_set_alpha(float* %54, float %58)
  %60 = load float*, float** @coord_shadow, align 8
  %61 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 1
  store float* %60, float** %61, align 8
  %62 = load float, float* %16, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = fadd float %62, %65
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  store float %66, float* %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = uitofp i32 %68 to float
  %70 = load float, float* %17, align 4
  %71 = fsub float %69, %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = fsub float %71, %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  store float %75, float* %76, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = call i32 @menu_display_draw(%struct.TYPE_16__* %22, %struct.TYPE_14__* %77)
  br label %79

79:                                               ; preds = %53, %10
  %80 = load float*, float** %13, align 8
  %81 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %23, i32 0, i32 1
  store float* %80, float** %81, align 8
  %82 = load float, float* %16, align 4
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  store float %82, float* %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = uitofp i32 %84 to float
  %86 = load float, float* %17, align 4
  %87 = fsub float %85, %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  store float %87, float* %88, align 4
  %89 = load float*, float** %13, align 8
  %90 = call i32 @menu_display_set_alpha(float* %89, float 1.000000e+00)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = call i32 @menu_display_draw(%struct.TYPE_16__* %22, %struct.TYPE_14__* %91)
  ret void
}

declare dso_local i32 @menu_display_rotate_z(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @menu_display_set_alpha(float*, float) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
