; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_read_packet_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_read_packet_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8* (i32)*, i32 (i32, i32*, i8*, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@avs_library = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32)* @avisynth_read_packet_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avisynth_read_packet_audio(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %27, i32* %4, align 4
  br label %207

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = call i64 @avs_has_video(%struct.TYPE_20__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %28
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %53
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = bitcast %struct.TYPE_16__* %10 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = bitcast %struct.TYPE_16__* %9 to i64*
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @av_rescale_q(i32 %67, i64 %69, i64 %71)
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %85

79:                                               ; preds = %53
  %80 = bitcast %struct.TYPE_16__* %10 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = bitcast %struct.TYPE_16__* %9 to i64*
  %83 = load i64, i64* %82, align 4
  %84 = call i32 @av_rescale_q(i32 1, i64 %81, i64 %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %79, %63
  br label %87

86:                                               ; preds = %28
  store i32 1000, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  store i32 0, i32* %4, align 4
  br label %207

95:                                               ; preds = %87
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %101, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %95
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %108, %95
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %12, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %207

133:                                              ; preds = %119
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = call i32 @avs_bytes_per_channel_sample(%struct.TYPE_20__* %136)
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %139, %144
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %133
  %153 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %153, i32* %4, align 4
  br label %207

154:                                              ; preds = %133
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @av_new_packet(%struct.TYPE_17__* %155, i32 %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %4, align 4
  br label %207

164:                                              ; preds = %154
  %165 = load i8*, i8** %12, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i32 (i32, i32*, i8*, i32)*, i32 (i32, i32*, i8*, i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @avs_library, i32 0, i32 1), align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 %179(i32 %182, i32* %185, i8* %186, i32 %187)
  %189 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @avs_library, i32 0, i32 0), align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i8* %189(i32 %192)
  store i8* %193, i8** %13, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %164
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = load i32, i32* @AV_LOG_ERROR, align 4
  %199 = load i8*, i8** %13, align 8
  %200 = call i32 @av_log(%struct.TYPE_18__* %197, i32 %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %199)
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  store i32 1, i32* %202, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = call i32 @av_packet_unref(%struct.TYPE_17__* %203)
  %205 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %205, i32* %4, align 4
  br label %207

206:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %196, %161, %152, %132, %90, %26
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i64 @avs_has_video(%struct.TYPE_20__*) #1

declare dso_local i32 @av_rescale_q(i32, i64, i64) #1

declare dso_local i32 @avs_bytes_per_channel_sample(%struct.TYPE_20__*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i8*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
