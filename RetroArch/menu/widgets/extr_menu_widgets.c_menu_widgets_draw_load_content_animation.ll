; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_load_content_animation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_load_content_animation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }

@load_content_animation_icon_size = common dso_local global i64 0, align 8
@load_content_animation_fade_alpha = common dso_local global float 0.000000e+00, align 4
@load_content_animation_icon_color = common dso_local global float* null, align 8
@load_content_animation_icon_alpha = common dso_local global i32 0, align 4
@load_content_animation_icon = common dso_local global i32 0, align 4
@font_bold = common dso_local global i32 0, align 4
@load_content_animation_content_name = common dso_local global i32 0, align 4
@TEXT_ALIGN_CENTER = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@font_raster_regular = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@font_raster_bold = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@load_content_animation_final_fade_alpha = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @menu_widgets_draw_load_content_animation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_draw_load_content_animation(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %8 = load i64, i64* @load_content_animation_icon_size, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load float, float* @load_content_animation_fade_alpha, align 4
  %11 = fmul float %10, 2.550000e+02
  store float %11, float* %4, align 4
  %12 = load float, float* %4, align 4
  %13 = call float @COLOR_TEXT_ALPHA(i32 -1195853824, float %12)
  store float %13, float* %5, align 4
  %14 = load float, float* @load_content_animation_fade_alpha, align 4
  %15 = fmul float -2.500000e+01, %14
  %16 = fptoui float %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load float*, float** @load_content_animation_icon_color, align 8
  store float* %17, float** %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = load float, float* @load_content_animation_fade_alpha, align 4
  %20 = call i32 @menu_widgets_draw_backdrop(%struct.TYPE_20__* %18, float %19)
  %21 = load float*, float** %7, align 8
  %22 = load i32, i32* @load_content_animation_icon_alpha, align 4
  %23 = call i32 @menu_display_set_alpha(float* %21, i32 %22)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %25 = call i32 @menu_display_blend_begin(%struct.TYPE_20__* %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @load_content_animation_icon, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 2
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %33, %35
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %40, %42
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load float*, float** %7, align 8
  %51 = call i32 @menu_widgets_draw_icon(%struct.TYPE_20__* %26, i32 %27, i32 %28, i32 %29, i32 %36, i32 %43, i32 %46, i32 %49, i32 0, i32 1, float* %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %53 = call i32 @menu_display_blend_end(%struct.TYPE_20__* %52)
  %54 = load i32, i32* @font_bold, align 4
  %55 = load i32, i32* @load_content_animation_content_name, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 2
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %63, 175
  %65 = add nsw i32 %64, 25
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load float, float* %5, align 4
  %75 = load i32, i32* @TEXT_ALIGN_CENTER, align 4
  %76 = call i32 @menu_display_draw_text(i32 %54, i32 %55, i32 %59, i32 %67, i32 %70, i32 %73, float %74, i32 %75, i32 1, i32 0, i32 0, i32 0)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @font_regular, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %85 = call i32 @font_driver_flush(i32 %79, i32 %82, i32 %83, %struct.TYPE_20__* %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @font_bold, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %94 = call i32 @font_driver_flush(i32 %88, i32 %91, i32 %92, %struct.TYPE_20__* %93)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @font_raster_regular, i32 0, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @font_raster_bold, i32 0, i32 0, i32 0, i32 0), align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = load float, float* @load_content_animation_final_fade_alpha, align 4
  %97 = call i32 @menu_widgets_draw_backdrop(%struct.TYPE_20__* %95, float %96)
  ret void
}

declare dso_local float @COLOR_TEXT_ALPHA(i32, float) #1

declare dso_local i32 @menu_widgets_draw_backdrop(%struct.TYPE_20__*, float) #1

declare dso_local i32 @menu_display_set_alpha(float*, i32) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_20__*) #1

declare dso_local i32 @menu_widgets_draw_icon(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float*) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_20__*) #1

declare dso_local i32 @menu_display_draw_text(i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @font_driver_flush(i32, i32, i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
