; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_background.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_render_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { float, float, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, float*, i64, %struct.TYPE_15__, i32*, i32*, i32, i32*, i32*, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i32*, i64 }

@__const.materialui_render_background.draw_color = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@MENU_DISPLAY_PRIM_TRIANGLESTRIP = common dso_local global i32 0, align 4
@menu_display_white_texture = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*)* @materialui_render_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_render_background(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca [16 x float], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %6, align 4
  store float 1.000000e+00, float* %7, align 4
  %9 = bitcast [16 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([16 x float]* @__const.materialui_render_background.draw_color to i8*), i64 64, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 12
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 10
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 9
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 8
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @MENU_DISPLAY_PRIM_TRIANGLESTRIP, align 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds [16 x float], [16 x float]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store float* %33, float** %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  store i32 1, i32* %6, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 8
  store float %53, float* %7, align 4
  br label %72

54:                                               ; preds = %40, %2
  %55 = load i64, i64* @menu_display_white_texture, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds [16 x float], [16 x float]* %8, i64 0, i64 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(float* %57, i32 %61, i32 64)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  store float %70, float* %7, align 4
  br label %71

71:                                               ; preds = %67, %54
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = call i32 @menu_display_blend_begin(%struct.TYPE_18__* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load float, float* %7, align 4
  %78 = call i32 @menu_display_draw_bg(%struct.TYPE_19__* %5, %struct.TYPE_18__* %75, i32 %76, float %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = call i32 @menu_display_draw(%struct.TYPE_19__* %5, %struct.TYPE_18__* %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = call i32 @menu_display_blend_end(%struct.TYPE_18__* %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(float*, i32, i32) #2

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_18__*) #2

declare dso_local i32 @menu_display_draw_bg(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, float) #2

declare dso_local i32 @menu_display_draw(%struct.TYPE_19__*, %struct.TYPE_18__*) #2

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
