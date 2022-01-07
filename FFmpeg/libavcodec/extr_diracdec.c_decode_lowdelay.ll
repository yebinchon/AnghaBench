; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_lowdelay.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_decode_lowdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i64, %struct.TYPE_26__*, %struct.TYPE_21__, %struct.TYPE_23__, i64, %struct.TYPE_19__, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32** }
%struct.TYPE_26__ = type { i32, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }

@MAX_DWT_LEVELS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"slice params buffer allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"thread buffer allocation failure\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"too many bytes\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"too few slices\0A\00", align 1
@decode_hq_slice_row = common dso_local global i32 0, align 4
@decode_lowdelay_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @decode_lowdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lowdelay(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %4, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @MAX_DWT_LEVELS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = icmp ne i32 %26, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %1
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 14
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = call i8* @av_realloc_f(%struct.TYPE_24__* %38, i32 %45, i32 16)
  %47 = bitcast i8* %46 to %struct.TYPE_24__*
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 14
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 14
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = icmp ne %struct.TYPE_24__* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %35
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(%struct.TYPE_26__* %57, i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

64:                                               ; preds = %35
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %64, %1
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 14
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  store %struct.TYPE_24__* %77, %struct.TYPE_24__** %11, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @subband_coeffs(%struct.TYPE_25__* %78, i32 %82, i32 %86, i32 0, i32* %23)
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 1, %92
  %94 = shl i32 %89, %93
  %95 = add nsw i32 %94, 512
  store i32 %95, i32* %8, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %74
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %103, %74
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 13
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %119, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @av_realloc_f(%struct.TYPE_24__* %120, i32 %123, i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_24__*
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 13
  store %struct.TYPE_24__* %128, %struct.TYPE_24__** %130, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 13
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = icmp ne %struct.TYPE_24__* %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %109
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = call i32 @av_log(%struct.TYPE_26__* %138, i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

143:                                              ; preds = %109
  br label %144

144:                                              ; preds = %143, %103
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 12
  %147 = call i32 @align_get_bits(%struct.TYPE_19__* %146)
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 12
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 12
  %154 = call i32 @get_bits_count(%struct.TYPE_19__* %153)
  %155 = sdiv i32 %154, 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  store i32* %157, i32** %10, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 12
  %160 = call i32 @get_bits_left(%struct.TYPE_19__* %159)
  store i32 %160, i32* %7, align 4
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %316

165:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %285, %165
  %167 = load i32, i32* %7, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br label %175

175:                                              ; preds = %169, %166
  %176 = phi i1 [ false, %166 ], [ %174, %169 ]
  br i1 %176, label %177, label %288

177:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %281, %177
  %179 = load i32, i32* %7, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br label %187

187:                                              ; preds = %181, %178
  %188 = phi i1 [ false, %178 ], [ %186, %181 ]
  br i1 %188, label %189, label %284

189:                                              ; preds = %187
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 10
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  store i32 0, i32* %16, align 4
  br label %195

195:                                              ; preds = %218, %189
  %196 = load i32, i32* %16, align 4
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %221

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %7, align 4
  %201 = sdiv i32 %200, 8
  %202 = icmp sle i32 %199, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 10
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %208, %212
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %203, %198
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %195

221:                                              ; preds = %195
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @INT_MAX, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %230, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %9, align 4
  %227 = mul nsw i32 %226, 8
  %228 = load i32, i32* %7, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %225, %221
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %232, align 8
  %234 = load i32, i32* @AV_LOG_ERROR, align 4
  %235 = call i32 @av_log(%struct.TYPE_26__* %233, i32 %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %236 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %236, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

237:                                              ; preds = %225
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  store i32 %238, i32* %243, align 4
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  store i32 %244, i32* %249, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 2
  store i32 %250, i32* %255, align 4
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 3
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @init_get_bits(i32* %260, i32* %261, i32 %262)
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32*, i32** %10, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %10, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sdiv i32 %270, 8
  %272 = load i32, i32* %9, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %237
  %275 = load i32, i32* %9, align 4
  %276 = mul nsw i32 %275, 8
  %277 = load i32, i32* %7, align 4
  %278 = sub nsw i32 %277, %276
  store i32 %278, i32* %7, align 4
  br label %280

279:                                              ; preds = %237
  store i32 0, i32* %7, align 4
  br label %280

280:                                              ; preds = %279, %274
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %178

284:                                              ; preds = %187
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %6, align 4
  br label %166

288:                                              ; preds = %175
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %291, %294
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %305

298:                                              ; preds = %288
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 8
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %300, align 8
  %302 = load i32, i32* @AV_LOG_ERROR, align 4
  %303 = call i32 @av_log(%struct.TYPE_26__* %301, i32 %302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %304 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %304, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

305:                                              ; preds = %288
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 2
  %308 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32)** %307, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %310 = load i32, i32* @decode_hq_slice_row, align 4
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 %308(%struct.TYPE_26__* %309, i32 %310, %struct.TYPE_24__* %311, i32* null, i32 %314)
  br label %446

316:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %317

317:                                              ; preds = %434, %316
  %318 = load i32, i32* %7, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load i32, i32* %6, align 4
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br label %326

326:                                              ; preds = %320, %317
  %327 = phi i1 [ false, %317 ], [ %325, %320 ]
  br i1 %327, label %328, label %437

328:                                              ; preds = %326
  store i32 0, i32* %5, align 4
  br label %329

329:                                              ; preds = %430, %328
  %330 = load i32, i32* %7, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i32, i32* %5, align 4
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp slt i32 %333, %336
  br label %338

338:                                              ; preds = %332, %329
  %339 = phi i1 [ false, %329 ], [ %337, %332 ]
  br i1 %339, label %340, label %433

340:                                              ; preds = %338
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, 1
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = mul nsw i32 %342, %348
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 9
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sdiv i32 %349, %354
  %356 = load i32, i32* %14, align 4
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 9
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = mul nsw i32 %356, %362
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 9
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = sdiv i32 %363, %368
  %370 = sub nsw i32 %355, %369
  store i32 %370, i32* %9, align 4
  %371 = load i32, i32* %9, align 4
  %372 = load i32, i32* @INT_MAX, align 4
  %373 = icmp sge i32 %371, %372
  br i1 %373, label %379, label %374

374:                                              ; preds = %340
  %375 = load i32, i32* %9, align 4
  %376 = mul nsw i32 %375, 8
  %377 = load i32, i32* %7, align 4
  %378 = icmp sgt i32 %376, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %374, %340
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 8
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %381, align 8
  %383 = load i32, i32* @AV_LOG_ERROR, align 4
  %384 = call i32 @av_log(%struct.TYPE_26__* %382, i32 %383, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %385 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %385, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

386:                                              ; preds = %374
  %387 = load i32, i32* %9, align 4
  %388 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %389 = load i32, i32* %14, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 0
  store i32 %387, i32* %392, align 4
  %393 = load i32, i32* %5, align 4
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 1
  store i32 %393, i32* %398, align 4
  %399 = load i32, i32* %6, align 4
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %401 = load i32, i32* %14, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 2
  store i32 %399, i32* %404, align 4
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %406 = load i32, i32* %14, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 3
  %410 = load i32*, i32** %10, align 8
  %411 = load i32, i32* %7, align 4
  %412 = call i32 @init_get_bits(i32* %409, i32* %410, i32 %411)
  %413 = load i32, i32* %14, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %14, align 4
  %415 = load i32, i32* %9, align 4
  %416 = load i32*, i32** %10, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %10, align 8
  %419 = load i32, i32* %7, align 4
  %420 = sdiv i32 %419, 8
  %421 = load i32, i32* %9, align 4
  %422 = icmp sge i32 %420, %421
  br i1 %422, label %423, label %428

423:                                              ; preds = %386
  %424 = load i32, i32* %9, align 4
  %425 = mul nsw i32 %424, 8
  %426 = load i32, i32* %7, align 4
  %427 = sub nsw i32 %426, %425
  store i32 %427, i32* %7, align 4
  br label %429

428:                                              ; preds = %386
  store i32 0, i32* %7, align 4
  br label %429

429:                                              ; preds = %428, %423
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %5, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %5, align 4
  br label %329

433:                                              ; preds = %338
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %6, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %6, align 4
  br label %317

437:                                              ; preds = %326
  %438 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %438, i32 0, i32 1
  %440 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32*, i32, i32)** %439, align 8
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %442 = load i32, i32* @decode_lowdelay_slice, align 4
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %444 = load i32, i32* %14, align 4
  %445 = call i32 %440(%struct.TYPE_26__* %441, i32 %442, %struct.TYPE_24__* %443, i32* null, i32 %444, i32 16)
  br label %446

446:                                              ; preds = %437, %305
  %447 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 7
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %519

451:                                              ; preds = %446
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %487

456:                                              ; preds = %451
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 6
  %459 = load %struct.TYPE_22__*, %struct.TYPE_22__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i64 0
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 0
  %462 = load i32**, i32*** %461, align 8
  %463 = getelementptr inbounds i32*, i32** %462, i64 0
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  %466 = call i32 @intra_dc_prediction_10(i32* %465)
  %467 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %467, i32 0, i32 6
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i64 1
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 0
  %472 = load i32**, i32*** %471, align 8
  %473 = getelementptr inbounds i32*, i32** %472, i64 0
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = call i32 @intra_dc_prediction_10(i32* %475)
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %478 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %477, i32 0, i32 6
  %479 = load %struct.TYPE_22__*, %struct.TYPE_22__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i64 2
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 0
  %482 = load i32**, i32*** %481, align 8
  %483 = getelementptr inbounds i32*, i32** %482, i64 0
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 0
  %486 = call i32 @intra_dc_prediction_10(i32* %485)
  br label %518

487:                                              ; preds = %451
  %488 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 6
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i64 0
  %492 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %491, i32 0, i32 0
  %493 = load i32**, i32*** %492, align 8
  %494 = getelementptr inbounds i32*, i32** %493, i64 0
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 0
  %497 = call i32 @intra_dc_prediction_8(i32* %496)
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 6
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i64 1
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 0
  %503 = load i32**, i32*** %502, align 8
  %504 = getelementptr inbounds i32*, i32** %503, i64 0
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 0
  %507 = call i32 @intra_dc_prediction_8(i32* %506)
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %508, i32 0, i32 6
  %510 = load %struct.TYPE_22__*, %struct.TYPE_22__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %510, i64 2
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 0
  %513 = load i32**, i32*** %512, align 8
  %514 = getelementptr inbounds i32*, i32** %513, i64 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = call i32 @intra_dc_prediction_8(i32* %516)
  br label %518

518:                                              ; preds = %487, %456
  br label %519

519:                                              ; preds = %518, %446
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %520

520:                                              ; preds = %519, %379, %298, %230, %135, %54
  %521 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %521)
  %522 = load i32, i32* %2, align 4
  ret i32 %522
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @av_realloc_f(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @subband_coeffs(%struct.TYPE_25__*, i32, i32, i32, i32*) #2

declare dso_local i32 @align_get_bits(%struct.TYPE_19__*) #2

declare dso_local i32 @get_bits_count(%struct.TYPE_19__*) #2

declare dso_local i32 @get_bits_left(%struct.TYPE_19__*) #2

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #2

declare dso_local i32 @intra_dc_prediction_10(i32*) #2

declare dso_local i32 @intra_dc_prediction_8(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
