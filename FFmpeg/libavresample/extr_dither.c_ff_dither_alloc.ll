; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_ff_dither_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_ff_dither_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, %struct.TYPE_11__*, i8*, i8*, i8*, i8*, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dithering %s to %s is not supported\0A\00", align 1
@AV_RESAMPLE_DITHER_TRIANGULAR_NS = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"sample rate must be 48000 or 44100 Hz for triangular_ns dither. using triangular_hp instead.\0A\00", align 1
@AV_RESAMPLE_DITHER_TRIANGULAR_HP = common dso_local global i64 0, align 8
@ns_48_coef_b = common dso_local global i32 0, align 4
@ns_48_coef_a = common dso_local global i32 0, align 4
@ns_44_coef_b = common dso_local global i32 0, align 4
@ns_44_coef_a = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"dither s16 buffer\00", align 1
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"dither flt buffer\00", align 1
@MUTE_THRESHOLD_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ff_dither_alloc(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @av_get_packed_sample_fmt(i32 %18)
  %20 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @av_get_bytes_per_sample(i32 %23)
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %6
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @av_get_sample_fmt_name(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @av_get_sample_fmt_name(i32 %31)
  %33 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %27, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %242

34:                                               ; preds = %22
  %35 = call i8* @av_mallocz(i32 96)
  %36 = bitcast i8* %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %15, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %242

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 13
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_RESAMPLE_DITHER_TRIANGULAR_NS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 48000
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 44100
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = load i32, i32* @AV_LOG_WARNING, align 4
  %66 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %64, i32 %65, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i64, i64* @AV_RESAMPLE_DITHER_TRIANGULAR_HP, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %60, %57, %51
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 12
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dither_init(i32* %77, i64 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AV_RESAMPLE_DITHER_TRIANGULAR_NS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %70
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 48000
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @ns_48_coef_b, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ns_48_coef_a, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 8
  br label %104

97:                                               ; preds = %87
  %98 = load i32, i32* @ns_44_coef_b, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @ns_44_coef_a, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %112 = call i8* @ff_audio_data_alloc(i32 %110, i32 1024, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 9
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 9
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  br label %240

120:                                              ; preds = %109
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i8* @ff_audio_convert_alloc(%struct.TYPE_13__* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 0)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 8
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 8
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %120
  br label %240

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %105
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %147 = call i8* @ff_audio_data_alloc(i32 %145, i32 1024, i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 7
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 7
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %144
  br label %240

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @ff_audio_convert_alloc(%struct.TYPE_13__* %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 6
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %160
  br label %240

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177, %156
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 8
  %182 = trunc i64 %181 to i32
  %183 = call i8* @av_mallocz(i32 %182)
  %184 = bitcast i8* %183 to %struct.TYPE_11__*
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 5
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %186, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = icmp ne %struct.TYPE_11__* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %178
  br label %240

192:                                              ; preds = %178
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @MUTE_THRESHOLD_SEC, align 4
  %198 = mul nsw i32 %196, %197
  %199 = call i32 @lrintf(i32 %198)
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  %208 = call i32 @av_lfg_init(i32* %14, i32 12648430)
  store i32 0, i32* %16, align 4
  br label %209

209:                                              ; preds = %235, %192
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %209
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 5
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %218
  store %struct.TYPE_11__* %219, %struct.TYPE_11__** %17, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  %226 = call i32 @av_lfg_get(i32* %14)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sdiv i32 %231, 2
  %233 = call i32 @FFMAX(i32 32768, i32 %232)
  %234 = call i32 @generate_dither_noise(%struct.TYPE_12__* %229, %struct.TYPE_11__* %230, i32 %233)
  br label %235

235:                                              ; preds = %213
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %209

238:                                              ; preds = %209
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %239, %struct.TYPE_12__** %7, align 8
  br label %242

240:                                              ; preds = %191, %176, %154, %133, %119
  %241 = call i32 @ff_dither_free(%struct.TYPE_12__** %15)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %242

242:                                              ; preds = %240, %238, %39, %26
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %243
}

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @dither_init(i32*, i64) #1

declare dso_local i8* @ff_audio_data_alloc(i32, i32, i32, i8*) #1

declare dso_local i8* @ff_audio_convert_alloc(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lrintf(i32) #1

declare dso_local i32 @av_lfg_init(i32*, i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @generate_dither_noise(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_dither_free(%struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
