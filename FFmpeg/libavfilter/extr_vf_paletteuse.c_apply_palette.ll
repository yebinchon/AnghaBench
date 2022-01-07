; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_apply_palette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_apply_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__**, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i32)*, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%dx%d rect: (%d;%d) -> (%d,%d) [area:%dx%d]\0A\00", align 1
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__**)* @apply_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_palette(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %13, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %14, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %27, i64 0
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %15, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %30, i32 %33, i32 %36)
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %16, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %39 = icmp ne %struct.TYPE_24__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %3
  %41 = call i32 @av_frame_free(%struct.TYPE_24__** %6)
  %42 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %157

45:                                               ; preds = %3
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %48 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %46, %struct.TYPE_24__* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %60 = call i32 @set_processing_window(i32 %51, i32 %54, %struct.TYPE_24__* %55, i32 %58, %struct.TYPE_24__* %59, i32* %8, i32* %9, i32* %10, i32* %11)
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @av_frame_unref(i32 %63)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @av_frame_unref(i32 %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = call i64 @av_frame_ref(i32 %71, %struct.TYPE_24__* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %45
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %80 = call i64 @av_frame_ref(i32 %78, %struct.TYPE_24__* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @av_frame_make_writable(i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82, %75, %45
  %89 = call i32 @av_frame_free(%struct.TYPE_24__** %6)
  %90 = call i32 @av_frame_free(%struct.TYPE_24__** %16)
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %91, align 8
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %157

94:                                               ; preds = %82
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ff_dlog(%struct.TYPE_26__* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i32)** %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 %115(%struct.TYPE_23__* %116, %struct.TYPE_24__* %117, %struct.TYPE_24__* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %94
  %127 = call i32 @av_frame_free(%struct.TYPE_24__** %16)
  %128 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %128, align 8
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %157

130:                                              ; preds = %94
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AVPALETTE_SIZE, align 4
  %140 = call i32 @memcpy(i32 %135, i32 %138, i32 %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %130
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @debug_mean_error(%struct.TYPE_23__* %146, %struct.TYPE_24__* %147, %struct.TYPE_24__* %148, i32 %151)
  br label %153

153:                                              ; preds = %145, %130
  %154 = call i32 @av_frame_free(%struct.TYPE_24__** %6)
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %156 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* %155, %struct.TYPE_24__** %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %153, %126, %88, %40
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @set_processing_window(i32, i32, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @av_frame_unref(i32) #1

declare dso_local i64 @av_frame_ref(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @av_frame_make_writable(i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_26__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @debug_mean_error(%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
