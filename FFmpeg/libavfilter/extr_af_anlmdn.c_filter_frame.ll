; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anlmdn.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_20__** }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@filter_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %6, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %18, i64 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %7, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8**
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @av_audio_fifo_write(i32 %38, i8** %42, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @av_audio_fifo_size(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %35
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__* %75, i32 %76)
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %9, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = icmp ne %struct.TYPE_19__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %189

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %68, %35
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8**
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @av_audio_fifo_peek(i32 %94, i8** %100, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  br label %141

108:                                              ; preds = %91
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)** %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = load i32, i32* @filter_channel, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %113(%struct.TYPE_21__* %114, i32 %115, %struct.TYPE_19__* %116, i32* null, i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @av_audio_fifo_drain(i32 %123, i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %85

141:                                              ; preds = %107, %85
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %143 = icmp ne %struct.TYPE_19__* %142, null
  br i1 %143, label %144, label %187

144:                                              ; preds = %141
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %144
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @FFMIN(i64 %162, i64 %165)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %174, %171
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %159, %144
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %186 = call i32 @ff_filter_frame(%struct.TYPE_20__* %184, %struct.TYPE_19__* %185)
  store i32 %186, i32* %3, align 4
  br label %189

187:                                              ; preds = %141
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %176, %80
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i64) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @av_audio_fifo_size(i32) #1

declare dso_local %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_audio_fifo_peek(i32, i8**, i32) #1

declare dso_local i32 @av_audio_fifo_drain(i32, i32) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
