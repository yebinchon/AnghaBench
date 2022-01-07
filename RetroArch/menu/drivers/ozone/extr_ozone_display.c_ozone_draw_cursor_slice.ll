; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_cursor_slice.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_display.c_ozone_draw_cursor_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }

@OZONE_THEME_TEXTURE_CURSOR_NO_BORDER = common dso_local global i64 0, align 8
@OZONE_TEXTURE_CURSOR_BORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32, i64, float)* @ozone_draw_cursor_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ozone_draw_cursor_slice(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, i64 %5, float %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store float %6, float* %14, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load float, float* %14, align 4
  %20 = call i32 @menu_display_set_alpha(i32 %18, float %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load float, float* %14, align 4
  %26 = call i32 @menu_display_set_alpha(i32 %24, float %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = call i32 @menu_display_blend_begin(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 14
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 3
  %37 = add i32 %36, 28
  %38 = sub i32 %37, 4
  %39 = load i32, i32* %12, align 4
  %40 = add i32 %39, 20
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @OZONE_THEME_TEXTURE_CURSOR_NO_BORDER, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @menu_display_draw_texture_slice(%struct.TYPE_12__* %29, i32 %31, i32 %34, i32 80, i32 80, i32 %38, i32 %40, i32 %43, i32 %46, i32 %50, i32 20, double 1.000000e+00, i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 14
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 3
  %68 = add i32 %67, 28
  %69 = sub i32 %68, 4
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 20
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @OZONE_TEXTURE_CURSOR_BORDER, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @menu_display_draw_texture_slice(%struct.TYPE_12__* %60, i32 %62, i32 %65, i32 80, i32 80, i32 %69, i32 %71, i32 %74, i32 %77, i32 %81, i32 20, double 1.000000e+00, i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = call i32 @menu_display_blend_end(%struct.TYPE_12__* %89)
  ret void
}

declare dso_local i32 @menu_display_set_alpha(i32, float) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_12__*) #1

declare dso_local i32 @menu_display_draw_texture_slice(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
