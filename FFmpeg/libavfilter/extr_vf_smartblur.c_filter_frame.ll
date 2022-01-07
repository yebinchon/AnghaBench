; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %6, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %20, i64 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %7, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AV_CEIL_RSHIFT(i32 %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AV_CEIL_RSHIFT(i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__* %37, i32 %40, i32 %43)
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %8, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %46 = icmp ne %struct.TYPE_20__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %164

51:                                               ; preds = %2
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = call i32 @av_frame_copy_props(%struct.TYPE_20__* %52, %struct.TYPE_20__* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @blur(i32 %59, i32 %64, i32 %69, i32 %74, i32 %77, i32 %80, i32 %84, i32 %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %159

96:                                               ; preds = %51
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @blur(i32 %101, i32 %106, i32 %111, i32 %116, i32 %117, i32 %118, i32 %122, i32 %126)
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @blur(i32 %132, i32 %137, i32 %142, i32 %147, i32 %148, i32 %149, i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %96, %51
  %160 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = call i32 @ff_filter_frame(%struct.TYPE_21__* %161, %struct.TYPE_20__* %162)
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %47
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_20__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @blur(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
