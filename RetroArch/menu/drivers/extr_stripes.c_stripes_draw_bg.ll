; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_draw_bg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_draw_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i32*, %struct.video_coords*, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@menu_display_white_texture = common dso_local global i32 0, align 4
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @stripes_draw_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_draw_bg(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.video_coords, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [16 x float], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %14 = call i32 @HSLToRGB(double 0.000000e+00, double 5.000000e-01, double 5.000000e-01, float* %13)
  %15 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %17 = load float, float* %16, align 4
  store float %17, float* %15, align 4
  %18 = getelementptr inbounds float, float* %15, i64 1
  %19 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %20 = load float, float* %19, align 4
  store float %20, float* %18, align 4
  %21 = getelementptr inbounds float, float* %18, i64 1
  %22 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %23 = load float, float* %22, align 4
  store float %23, float* %21, align 4
  %24 = getelementptr inbounds float, float* %21, i64 1
  store float 1.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %27 = load float, float* %26, align 4
  store float %27, float* %25, align 4
  %28 = getelementptr inbounds float, float* %25, i64 1
  %29 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %30 = load float, float* %29, align 4
  store float %30, float* %28, align 4
  %31 = getelementptr inbounds float, float* %28, i64 1
  %32 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %33 = load float, float* %32, align 4
  store float %33, float* %31, align 4
  %34 = getelementptr inbounds float, float* %31, i64 1
  store float 1.000000e+00, float* %34, align 4
  %35 = getelementptr inbounds float, float* %34, i64 1
  %36 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %37 = load float, float* %36, align 4
  store float %37, float* %35, align 4
  %38 = getelementptr inbounds float, float* %35, i64 1
  %39 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %40 = load float, float* %39, align 4
  store float %40, float* %38, align 4
  %41 = getelementptr inbounds float, float* %38, i64 1
  %42 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %43 = load float, float* %42, align 4
  store float %43, float* %41, align 4
  %44 = getelementptr inbounds float, float* %41, i64 1
  store float 1.000000e+00, float* %44, align 4
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %47 = load float, float* %46, align 4
  store float %47, float* %45, align 4
  %48 = getelementptr inbounds float, float* %45, i64 1
  %49 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %50 = load float, float* %49, align 4
  store float %50, float* %48, align 4
  %51 = getelementptr inbounds float, float* %48, i64 1
  %52 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %53 = load float, float* %52, align 4
  store float %53, float* %51, align 4
  %54 = getelementptr inbounds float, float* %51, i64 1
  store float 1.000000e+00, float* %54, align 4
  %55 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds [16 x float], [16 x float]* %12, i64 0, i64 0
  %60 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 1
  store float* %59, float** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store %struct.video_coords* %10, %struct.video_coords** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @menu_display_white_texture, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @menu_display_blend_begin(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @menu_display_draw(%struct.TYPE_5__* %9, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @menu_display_blend_end(i32* %79)
  ret void
}

declare dso_local i32 @HSLToRGB(double, double, double, float*) #1

declare dso_local i32 @menu_display_blend_begin(i32*) #1

declare dso_local i32 @menu_display_draw(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @menu_display_blend_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
