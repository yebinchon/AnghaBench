; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_decode_slice_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_decode_slice_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32*, i32*, i64, i32, i32, %struct.TYPE_18__, i64, i64, i8*, i8*, %struct.TYPE_17__*, i32, %struct.TYPE_18__, i32*, i32 }
%struct.TYPE_18__ = type { i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported slice header (%02X)\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"slice after bitstream end\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"illegal slice type %u \0A\00", align 1
@ff_h264_golomb_to_pict_type = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Media key encryption\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @svq3_decode_slice_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq3_decode_slice_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 16
  %22 = call i8* @get_bits(%struct.TYPE_18__* %21, i32 8)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 159
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 159
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 96
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %36, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %2, align 4
  br label %350

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 5
  %43 = and i32 %42, 3
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 16
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 8, %46
  %48 = call i32 @show_bits(%struct.TYPE_18__* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 8
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 16
  %57 = call i32 @skip_bits(%struct.TYPE_18__* %56, i32 8)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 17
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 18
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @av_fast_malloc(i32** %59, i32* %61, i64 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 17
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %40
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %350

74:                                               ; preds = %40
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 16
  %80 = call i32 @get_bits_left(%struct.TYPE_18__* %79)
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %77, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %84, i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %87, i32* %2, align 4
  br label %350

88:                                               ; preds = %74
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 17
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 16
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 16
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %95, %101
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @memcpy(i32* %91, i64 %102, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %88
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 17
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = call i32 @AV_RL32(i32* %113)
  store i32 %114, i32* %13, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 17
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %119, %122
  %124 = call i32 @AV_WL32(i32* %118, i32 %123)
  br label %125

125:                                              ; preds = %109, %88
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 9
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 17
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @init_get_bits(%struct.TYPE_18__* %127, i32* %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %125
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 17
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 17
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @memmove(i32* %138, i32* %144, i32 %146)
  br label %148

148:                                              ; preds = %135, %125
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 16
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 %151, 8
  %153 = call i32 @skip_bits_long(%struct.TYPE_18__* %150, i32 %152)
  br label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 9
  %157 = call i32 @get_interleaved_ue_golomb(%struct.TYPE_18__* %156)
  store i32 %157, i32* %8, align 4
  %158 = icmp uge i32 %157, 3
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 14
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %162, i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  store i32 -1, i32* %2, align 4
  br label %350

166:                                              ; preds = %154
  %167 = load i32*, i32** @ff_h264_golomb_to_pict_type, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 15
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %7, align 4
  %175 = and i32 %174, 159
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %196

177:                                              ; preds = %166
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 64
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %190

183:                                              ; preds = %177
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = call i32 @av_log2(i32 %187)
  %189 = add nsw i32 1, %188
  br label %190

190:                                              ; preds = %183, %182
  %191 = phi i32 [ 6, %182 ], [ %189, %183 ]
  store i32 %191, i32* %6, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 9
  %194 = load i32, i32* %6, align 4
  %195 = call i8* @get_bits(%struct.TYPE_18__* %193, i32 %194)
  br label %208

196:                                              ; preds = %166
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 9
  %199 = call i64 @get_bits1(%struct.TYPE_18__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 14
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = call i32 @avpriv_report_missing_feature(%struct.TYPE_17__* %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %206, i32* %2, align 4
  br label %350

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %207, %190
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 9
  %211 = call i8* @get_bits(%struct.TYPE_18__* %210, i32 8)
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 13
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 9
  %216 = call i8* @get_bits(%struct.TYPE_18__* %215, i32 5)
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 12
  store i8* %216, i8** %218, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 9
  %221 = call i64 @get_bits1(%struct.TYPE_18__* %220)
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 11
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 9
  %226 = call i32 @skip_bits1(%struct.TYPE_18__* %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 10
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %208
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 9
  %234 = call i32 @skip_bits1(%struct.TYPE_18__* %233)
  br label %235

235:                                              ; preds = %231, %208
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 9
  %238 = call i32 @skip_bits1(%struct.TYPE_18__* %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 9
  %241 = call i32 @skip_bits(%struct.TYPE_18__* %240, i32 2)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 9
  %244 = call i64 @skip_1stop_8data_bits(%struct.TYPE_18__* %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %235
  %247 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %247, i32* %2, align 4
  br label %350

248:                                              ; preds = %235
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %292

253:                                              ; preds = %248
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %256, i64 %265
  %267 = getelementptr inbounds i32, i32* %266, i64 3
  %268 = call i32 @memset(i32* %267, i32 -1, i32 16)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %275, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %274, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %271, i64 %283
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = mul i64 32, %288
  %290 = trunc i64 %289 to i32
  %291 = call i32 @memset(i32* %284, i32 -1, i32 %290)
  br label %292

292:                                              ; preds = %253, %248
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %349

297:                                              ; preds = %292
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %5, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %304, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %303, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %300, i64 %312
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 8
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %316, %319
  %321 = sext i32 %320 to i64
  %322 = mul i64 32, %321
  %323 = trunc i64 %322 to i32
  %324 = call i32 @memset(i32* %313, i32 -1, i32 %323)
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %297
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %5, align 4
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 8
  %340 = sub nsw i32 %336, %339
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %335, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 3
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %332, i64 %346
  store i32 -1, i32* %347, align 4
  br label %348

348:                                              ; preds = %329, %297
  br label %349

349:                                              ; preds = %348, %292
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %349, %246, %201, %159, %83, %71, %35
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i8* @get_bits(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @show_bits(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @skip_bits(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_fast_malloc(i32**, i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_bits_left(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @init_get_bits(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skip_bits_long(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @get_interleaved_ue_golomb(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i64 @get_bits1(%struct.TYPE_18__*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @skip_bits1(%struct.TYPE_18__*) #1

declare dso_local i64 @skip_1stop_8data_bits(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
