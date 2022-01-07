; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftfilt.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftfilt.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32**, i32** }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %24, i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @av_audio_fifo_size(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %31
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ff_inlink_consume_frame(i32* %41, %struct.TYPE_8__** %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %175

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8**
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_audio_fifo_write(i32 %53, i8** %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %50
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %64, %50
  %77 = call i32 @av_frame_free(%struct.TYPE_8__** %7)
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %175

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %31, %1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @av_audio_fifo_size(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %88, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @av_audio_fifo_size(i32 %96)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99, %84
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @filter_frame(i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @av_audio_fifo_size(i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = call i32 @ff_filter_set_ready(%struct.TYPE_9__* %116, i32 100)
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %175

120:                                              ; preds = %99, %93
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %4, align 8
  %127 = call i64 @ff_inlink_acknowledge_status(i32* %126, i32* %9, i32* %10)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @AVERROR_EOF, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @av_audio_fifo_size(i32 %138)
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = call i32 @ff_filter_set_ready(%struct.TYPE_9__* %142, i32 100)
  store i32 0, i32* %2, align 4
  br label %175

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145, %125, %120
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @av_audio_fifo_size(i32 %154)
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* @AVERROR_EOF, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @ff_outlink_set_status(i32* %158, i32 %159, i64 %162)
  store i32 0, i32* %2, align 4
  br label %175

164:                                              ; preds = %151, %146
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i32*, i32** %5, align 8
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %170, i32* %171)
  br label %173

173:                                              ; preds = %169, %164
  %174 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %173, %157, %141, %118, %80, %45
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i64 @av_audio_fifo_size(i32) #1

declare dso_local i32 @ff_inlink_consume_frame(i32*, %struct.TYPE_8__**) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_8__**) #1

declare dso_local i32 @filter_frame(i32*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32*, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i32, i64) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
