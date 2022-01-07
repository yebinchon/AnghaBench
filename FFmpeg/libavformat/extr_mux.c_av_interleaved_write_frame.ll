; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_interleaved_write_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_interleaved_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_26__**, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i64, i32 }

@FF_FDEBUG_TS = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"av_interleaved_write_frame size:%d dts:%s pts:%s\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVFMT_NOTIMESTAMPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"av_interleaved_write_frame FLUSH\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_interleaved_write_frame(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %13 = call i32 @prepare_input_packet(%struct.TYPE_28__* %11, %struct.TYPE_27__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %144

17:                                               ; preds = %2
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = icmp ne %struct.TYPE_27__* %18, null
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %22, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %23, i64 %26
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %8, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = call i32 @do_packet_auto_bsf(%struct.TYPE_28__* %29, %struct.TYPE_27__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %148

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %144

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FF_FDEBUG_TS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %49 = load i32, i32* @AV_LOG_DEBUG, align 4
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @av_ts2str(i64 %55)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @av_ts2str(i64 %59)
  %61 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %48, i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %47, %40
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AVFMT_NOTIMESTAMPS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %144

80:                                               ; preds = %68, %62
  br label %85

81:                                               ; preds = %17
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %83 = load i32, i32* @AV_LOG_TRACE, align 4
  %84 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %82, i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %80
  br label %86

86:                                               ; preds = %143, %85
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @interleave_packet(%struct.TYPE_28__* %87, %struct.TYPE_27__* %9, %struct.TYPE_27__* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %92 = icmp ne %struct.TYPE_27__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = call i32 @memset(%struct.TYPE_27__* %94, i32 0, i32 32)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %97 = call i32 @av_init_packet(%struct.TYPE_27__* %96)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %5, align 8
  br label %98

98:                                               ; preds = %93, %86
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %148

103:                                              ; preds = %98
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %105 = call i32 @write_packet(%struct.TYPE_28__* %104, %struct.TYPE_27__* %9)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %111, i64 %113
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %108, %103
  %120 = call i32 @av_packet_unref(%struct.TYPE_27__* %9)
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %148

125:                                              ; preds = %119
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = icmp ne %struct.TYPE_25__* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %3, align 4
  br label %148

143:                                              ; preds = %130, %125
  br label %86

144:                                              ; preds = %77, %38, %16
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %146 = call i32 @av_packet_unref(%struct.TYPE_27__* %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %137, %123, %101, %34
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @prepare_input_packet(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @do_packet_auto_bsf(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @av_ts2str(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @interleave_packet(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_27__*) #1

declare dso_local i32 @write_packet(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
