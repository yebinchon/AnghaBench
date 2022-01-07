; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_avgblur.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_avgblur.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %21, i64 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %8, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = call i64 @av_frame_is_writable(%struct.TYPE_19__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %9, align 8
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_20__* %30, i32 %33, i32 %36)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %9, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %139

44:                                               ; preds = %29
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = call i32 @av_frame_copy_props(%struct.TYPE_19__* %45, %struct.TYPE_19__* %46)
  br label %48

48:                                               ; preds = %44, %27
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %126, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %49
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %120, label %77

77:                                               ; preds = %55
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = icmp ne %struct.TYPE_19__* %78, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %77
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 7
  %115 = sdiv i32 %114, 8
  %116 = mul nsw i32 %110, %115
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @av_image_copy_plane(i32 %88, i32 %95, i32 %102, i32 %109, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %81, %77
  br label %126

120:                                              ; preds = %55
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @averageiir2d(%struct.TYPE_21__* %121, %struct.TYPE_19__* %122, %struct.TYPE_19__* %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %119
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %49

129:                                              ; preds = %49
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = icmp ne %struct.TYPE_19__* %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  br label %135

135:                                              ; preds = %133, %129
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = call i32 @ff_filter_frame(%struct.TYPE_20__* %136, %struct.TYPE_19__* %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %40
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @averageiir2d(%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
