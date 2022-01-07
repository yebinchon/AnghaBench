; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_27__**, %struct.TYPE_31__**, %struct.TYPE_24__*, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)* }
%struct.TYPE_28__ = type { %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { %struct.TYPE_25__*, i64, %struct.TYPE_26__*, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Channel %d clipping %d times. Please reduce gain.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  store %struct.TYPE_32__* %18, %struct.TYPE_32__** %6, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %7, align 8
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %24, i64 0
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  store %struct.TYPE_31__* %26, %struct.TYPE_31__** %8, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %28 = call i64 @av_frame_is_writable(%struct.TYPE_30__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_30__* %31, %struct.TYPE_30__** %10, align 8
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_30__* @ff_get_audio_buffer(%struct.TYPE_31__* %33, i32 %36)
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %10, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %39 = icmp ne %struct.TYPE_30__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %167

44:                                               ; preds = %32
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %47 = call i32 @av_frame_copy_props(%struct.TYPE_30__* %45, %struct.TYPE_30__* %46)
  br label %48

48:                                               ; preds = %44, %30
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store %struct.TYPE_30__* %49, %struct.TYPE_30__** %50, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %52, align 8
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)*, i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)** %56, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %57(%struct.TYPE_32__* %58, i32 %61, %struct.TYPE_28__* %9, i32* null, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %103, %48
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %66
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %72
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %84 = load i32, i32* @AV_LOG_WARNING, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @av_log(%struct.TYPE_32__* %83, i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %85, i64 %93)
  br label %95

95:                                               ; preds = %82, %72
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %66

106:                                              ; preds = %66
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %109 = icmp ne %struct.TYPE_30__* %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  br label %112

112:                                              ; preds = %110, %106
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %112
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %120, i64 1
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %121, align 8
  store %struct.TYPE_31__* %122, %struct.TYPE_31__** %13, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %14, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %133, i64 0
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @av_rescale_q(i32 %130, i32 %137, i32 %140)
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %14, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %117
  %146 = load i64, i64* %15, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  store i64 %146, i64* %150, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = call %struct.TYPE_30__* @av_frame_clone(%struct.TYPE_25__* %154)
  %156 = call i32 @ff_filter_frame(%struct.TYPE_31__* %151, %struct.TYPE_30__* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %3, align 4
  br label %167

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %117
  br label %163

163:                                              ; preds = %162, %112
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %166 = call i32 @ff_filter_frame(%struct.TYPE_31__* %164, %struct.TYPE_30__* %165)
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %159, %40
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @ff_get_audio_buffer(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_30__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_log(%struct.TYPE_32__*, i32, i8*, i32, i64) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @av_frame_clone(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
