; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_indicator.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_draw_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@menu_widgets_backdrop_orig = common dso_local global i32 0, align 4
@DEFAULT_BACKDROP = common dso_local global float 0.000000e+00, align 4
@simple_widget_height = common dso_local global i32 0, align 4
@menu_widgets_pure_white = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global i32 0, align 4
@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i32, i32, i32)* @menu_widgets_draw_indicator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_widgets_draw_indicator(%struct.TYPE_11__* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load i32, i32* @menu_widgets_backdrop_orig, align 4
  %18 = load float, float* @DEFAULT_BACKDROP, align 4
  %19 = call i32 @menu_display_set_alpha(i32 %17, float %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %5
  %23 = load i32, i32* @simple_widget_height, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @menu_widgets_backdrop_orig, align 4
  %40 = call i32 @menu_display_draw_quad(%struct.TYPE_11__* %26, i32 %29, i32 %30, i32 %31, i32 %32, i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* @menu_widgets_pure_white, align 4
  %42 = call i32 @menu_display_set_alpha(i32 %41, float 1.000000e+00)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = call i32 @menu_display_blend_begin(%struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @menu_widgets_pure_white, align 4
  %60 = call i32 @menu_widgets_draw_icon(%struct.TYPE_11__* %45, i32 %46, i32 %47, i64 %48, i32 %51, i32 %52, i32 %55, i32 %58, i32 0, i32 1, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = call i32 @menu_display_blend_end(%struct.TYPE_11__* %61)
  br label %114

63:                                               ; preds = %5
  %64 = load i32, i32* @simple_widget_height, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @msg_hash_to_str(i32 %65)
  store i8* %66, i8** %15, align 8
  %67 = load i32, i32* @font_regular, align 4
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = trunc i64 %70 to i32
  %72 = call i32 @font_driver_get_message_width(i32 %67, i8* %68, i32 %71, i32 1)
  %73 = load i32, i32* @simple_widget_padding, align 4
  %74 = mul nsw i32 %73, 2
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @menu_widgets_backdrop_orig, align 4
  %90 = call i32 @menu_display_draw_quad(%struct.TYPE_11__* %76, i32 %79, i32 %80, i32 %81, i32 %82, i32 %85, i32 %88, i32 %89)
  %91 = load i32, i32* @font_regular, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %93, %94
  %96 = load i32, i32* @simple_widget_padding, align 4
  %97 = add i32 %95, %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @simple_widget_padding, align 4
  %103 = sdiv i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  %113 = call i32 @menu_display_draw_text(i32 %91, i8* %92, i32 %97, i64 %105, i32 %108, i32 %111, i32 -1, i32 %112, float 1.000000e+00, i32 0, i32 0, i32 0)
  br label %114

114:                                              ; preds = %63, %22
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_set_alpha(i32, float) #1

declare dso_local i32 @menu_display_draw_quad(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_begin(%struct.TYPE_11__*) #1

declare dso_local i32 @menu_widgets_draw_icon(%struct.TYPE_11__*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @menu_display_blend_end(%struct.TYPE_11__*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @menu_display_draw_text(i32, i8*, i32, i64, i32, i32, i32, i32, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
