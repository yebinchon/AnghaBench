; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plusdec.c_atrac3p_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3plusdec.c_atrac3p_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32*, i32*, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }

@ATRAC3P_FRAME_SAMPLES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid start bit!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@CH_UNIT_TERMINATOR = common dso_local global i32 0, align 4
@CH_UNIT_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Channel unit extension\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Frame data doesn't match channel configuration!\0A\00", align 1
@AV_CODEC_ID_ATRAC3P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @atrac3p_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrac3p_decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float**, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to float**
  store float** %27, float*** %18, align 8
  %28 = load i32, i32* @ATRAC3P_FRAME_SAMPLES, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %33 = call i32 @ff_get_buffer(%struct.TYPE_21__* %31, %struct.TYPE_20__* %32, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %206

37:                                               ; preds = %4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @init_get_bits8(i32* %39, i32 %42, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %206

50:                                               ; preds = %37
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 5
  %53 = call i64 @get_bits1(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(%struct.TYPE_21__* %56, i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %5, align 4
  br label %206

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %179, %60
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 5
  %64 = call i32 @get_bits_left(i32* %63)
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 5
  %69 = call i32 @get_bits(i32* %68, i32 2)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @CH_UNIT_TERMINATOR, align 4
  %71 = icmp ne i32 %69, %70
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i1 [ false, %61 ], [ %71, %66 ]
  br i1 %73, label %74, label %185

74:                                               ; preds = %72
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @CH_UNIT_EXTENSION, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = call i32 @avpriv_report_missing_feature(%struct.TYPE_21__* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %81, i32* %5, align 4
  br label %206

82:                                               ; preds = %74
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %88, %82
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(%struct.TYPE_21__* %99, i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %5, align 4
  br label %206

103:                                              ; preds = %88
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  store i32 %104, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i64 %120
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = call i32 @ff_atrac3p_decode_channel_unit(i32* %115, %struct.TYPE_23__* %121, i32 %122, %struct.TYPE_21__* %123)
  store i32 %124, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %103
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %5, align 4
  br label %206

128:                                              ; preds = %103
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i64 %134
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = call i32 @decode_residual_spectrum(%struct.TYPE_22__* %129, %struct.TYPE_23__* %135, i32 %138, i32 %139, %struct.TYPE_21__* %140)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i64 %147
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %151 = call i32 @reconstruct_frame(%struct.TYPE_22__* %142, %struct.TYPE_23__* %148, i32 %149, %struct.TYPE_21__* %150)
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %176, %128
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load float**, float*** %18, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float*, float** %157, i64 %161
  %163 = load float*, float** %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @ATRAC3P_FRAME_SAMPLES, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = call i32 @memcpy(float* %163, i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %156
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %152

179:                                              ; preds = %152
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %16, align 4
  br label %61

185:                                              ; preds = %72
  %186 = load i32*, i32** %8, align 8
  store i32 1, i32* %186, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @AV_CODEC_ID_ATRAC3P, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @FFMIN(i32 %195, i32 %198)
  br label %204

200:                                              ; preds = %185
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  br label %204

204:                                              ; preds = %200, %192
  %205 = phi i32 [ %199, %192 ], [ %203, %200 ]
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %126, %98, %78, %55, %48, %35
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ff_atrac3p_decode_channel_unit(i32*, %struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @decode_residual_spectrum(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @reconstruct_frame(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
