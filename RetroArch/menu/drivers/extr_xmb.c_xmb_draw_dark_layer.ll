; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_dark_layer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_draw_dark_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32*, %struct.video_coords*, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.video_coords = type { i32, float*, i32*, i32*, i32* }

@menu_display_white_texture = common dso_local global i32 0, align 4
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32)* @xmb_draw_dark_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_draw_dark_layer(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.video_coords, align 8
  %11 = alloca [16 x float], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast [16 x float]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = bitcast i8* %12 to [16 x float]*
  %14 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 3
  store float 1.000000e+00, float* %14, align 4
  %15 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 7
  store float 1.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 11
  store float 1.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds [16 x float], [16 x float]* %13, i32 0, i32 15
  store float 1.000000e+00, float* %17, align 4
  %18 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MIN(i32 %21, double 7.500000e-01)
  %23 = call i32 @menu_display_set_alpha(float* %18, i32 %22)
  %24 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds [16 x float], [16 x float]* %11, i64 0, i64 0
  %29 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %10, i32 0, i32 1
  store float* %28, float** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  store %struct.video_coords* %10, %struct.video_coords** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @menu_display_white_texture, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @menu_display_blend_begin(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @menu_display_draw(%struct.TYPE_8__* %9, i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @menu_display_blend_end(i32* %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @menu_display_set_alpha(float*, i32) #2

declare dso_local i32 @MIN(i32, double) #2

declare dso_local i32 @menu_display_blend_begin(i32*) #2

declare dso_local i32 @menu_display_draw(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @menu_display_blend_end(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
