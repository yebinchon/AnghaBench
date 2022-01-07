; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_decode_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_decode_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64*, %struct.TYPE_20__, %struct.TYPE_18__, i32*, %struct.TYPE_17__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Impossible initial tile.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Previous slice segment missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*)* @hls_decode_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_decode_entry(%struct.TYPE_22__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(i32 %48, i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %3, align 4
  br label %296

52:                                               ; preds = %39, %2
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %58
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 @av_log(i32 %85, i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %3, align 4
  br label %296

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %255, %90
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %95, %101
  br label %103

103:                                              ; preds = %94, %91
  %104 = phi i1 [ false, %91 ], [ %102, %94 ]
  br i1 %104, label %105, label %266

105:                                              ; preds = %103
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %122, %123
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %125, %131
  %133 = srem i32 %116, %132
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %133, %139
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %150, %156
  %158 = sdiv i32 %141, %157
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %158, %164
  store i32 %165, i32* %10, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @hls_decode_neighbour(%struct.TYPE_21__* %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @ff_hevc_cabac_init(%struct.TYPE_21__* %171, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %105
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  store i64 -1, i64* %182, align 8
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %3, align 4
  br label %296

184:                                              ; preds = %105
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %186, %192
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %194, %200
  %202 = call i32 @hls_sao_param(%struct.TYPE_21__* %185, i32 %193, i32 %201)
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  store i32 %206, i32* %213, align 4
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  store i32 %217, i32* %224, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @hls_coding_quadtree(%struct.TYPE_21__* %235, i32 %236, i32 %237, i32 %243, i32 0)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %184
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  store i64 -1, i64* %253, align 8
  %254 = load i32, i32* %8, align 4
  store i32 %254, i32* %3, align 4
  br label %296

255:                                              ; preds = %184
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @ff_hevc_save_states(%struct.TYPE_21__* %258, i32 %259)
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @ff_hevc_hls_filters(%struct.TYPE_21__* %261, i32 %262, i32 %263, i32 %264)
  br label %91

266:                                              ; preds = %103
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %267, %268
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %269, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %266
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %278, %279
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = icmp sge i32 %280, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %277
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @ff_hevc_hls_filter(%struct.TYPE_21__* %289, i32 %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %288, %277, %266
  %295 = load i32, i32* %11, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %294, %247, %176, %82, %45
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @hls_decode_neighbour(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_cabac_init(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @hls_sao_param(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @hls_coding_quadtree(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_save_states(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ff_hevc_hls_filters(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_hls_filter(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
