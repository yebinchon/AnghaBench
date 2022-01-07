; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_from_font.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_init_axis_from_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @init_axis_from_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_axis_from_font(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = call i32 @AVERROR(i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 1920, i32* %6, align 4
  store i32 32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_15__* @alloc_frame_empty(i32 %11, i32 %12, i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %119

17:                                               ; preds = %1
  %18 = call %struct.TYPE_15__* (...) @av_frame_alloc()
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %20, align 8
  %21 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %119

23:                                               ; preds = %17
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @render_freetype(%struct.TYPE_14__* %24, %struct.TYPE_15__* %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @render_fontconfig(%struct.TYPE_14__* %32, %struct.TYPE_15__* %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = call i32 @render_default_font(%struct.TYPE_15__* %40)
  store i32 %41, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %119

44:                                               ; preds = %39, %31, %23
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @init_axis_color(%struct.TYPE_14__* %53, %struct.TYPE_15__* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %119

59:                                               ; preds = %52
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @convert_axis_pixel_format(i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ff_scale_image(i32 %64, i32 %69, i32 %72, i32 %75, i32 %79, i32 %82, i32 %85, i32 %86, i32 %87, i32 %88, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %59
  br label %119

95:                                               ; preds = %59
  %96 = call i32 @av_frame_free(%struct.TYPE_15__** %4)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @convert_axis_pixel_format(i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  store i32 0, i32* %2, align 4
  br label %125

119:                                              ; preds = %94, %58, %43, %22, %16
  %120 = call i32 @av_frame_free(%struct.TYPE_15__** %4)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = call i32 @av_frame_free(%struct.TYPE_15__** %122)
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %119, %95
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_15__* @alloc_frame_empty(i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @av_frame_alloc(...) #1

declare dso_local i64 @render_freetype(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @render_fontconfig(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @render_default_font(%struct.TYPE_15__*) #1

declare dso_local i32 @init_axis_color(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ff_scale_image(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_axis_pixel_format(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
