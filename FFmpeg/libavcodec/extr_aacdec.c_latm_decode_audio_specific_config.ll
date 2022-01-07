; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_latm_decode_audio_specific_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_latm_decode_audio_specific_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LATMContext = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"audio config changed (sample_rate=%d, chan_config=%d)\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"initializing latmctx\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LATMContext*, %struct.TYPE_20__*, i32)* @latm_decode_audio_specific_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latm_decode_audio_specific_config(%struct.LATMContext* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.LATMContext*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_20__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.LATMContext* %0, %struct.LATMContext** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.LATMContext*, %struct.LATMContext** %5, align 8
  %18 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %17, i32 0, i32 1
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %9, align 8
  %22 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = call i32 @get_bits_count(%struct.TYPE_20__* %23)
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = call i64 @get_bits_left(%struct.TYPE_20__* %29)
  %31 = call i32 @FFMIN(i32 %28, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @init_get_bits(%struct.TYPE_20__* %11, i32 %34, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @skip_bits_long(%struct.TYPE_20__* %11, i32 %39)
  br label %51

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = bitcast %struct.TYPE_20__* %11 to i8*
  %47 = bitcast %struct.TYPE_20__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %4, align 4
  br label %185

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = call i64 @get_bits_left(%struct.TYPE_20__* %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %4, align 4
  br label %185

57:                                               ; preds = %51
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @decode_audio_specific_config_gb(i32* null, %struct.TYPE_21__* %58, %struct.TYPE_19__* %10, %struct.TYPE_20__* %11, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %4, align 4
  br label %185

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = load %struct.LATMContext*, %struct.LATMContext** %5, align 8
  %77 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %80
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %181

102:                                              ; preds = %91, %80, %75
  %103 = load %struct.LATMContext*, %struct.LATMContext** %5, align 8
  %104 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %109 = load i32, i32* @AV_LOG_INFO, align 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %108, i32 %109, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %113)
  br label %119

115:                                              ; preds = %102
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = load i32, i32* @AV_LOG_DEBUG, align 4
  %118 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %116, i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %107
  %120 = load %struct.LATMContext*, %struct.LATMContext** %5, align 8
  %121 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 7
  %124 = sdiv i32 %123, 8
  store i32 %124, i32* %15, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %119
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @av_free(i32* %133)
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32* @av_malloc(i64 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %130
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %4, align 4
  br label %185

149:                                              ; preds = %130
  br label %150

150:                                              ; preds = %149, %119
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = bitcast %struct.TYPE_20__* %11 to i8*
  %156 = bitcast %struct.TYPE_20__* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %169, %150
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %157
  %162 = call i32 @get_bits(%struct.TYPE_20__* %11, i32 8)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  br label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %157

172:                                              ; preds = %157
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %180 = call i32 @memset(i32* %178, i32 0, i64 %179)
  br label %181

181:                                              ; preds = %172, %91
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @skip_bits_long(%struct.TYPE_20__* %182, i32 %183)
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %181, %146, %65, %55, %48
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_20__*) #2

declare dso_local i32 @FFMIN(i32, i64) #2

declare dso_local i64 @get_bits_left(%struct.TYPE_20__*) #2

declare dso_local i32 @init_get_bits(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @skip_bits_long(%struct.TYPE_20__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @decode_audio_specific_config_gb(i32*, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #2

declare dso_local i32 @av_free(i32*) #2

declare dso_local i32* @av_malloc(i64) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @get_bits(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
