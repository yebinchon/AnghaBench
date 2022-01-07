; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif_cuda.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_yadif_cuda.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_26__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 (i32*)*, i32 (i32)* }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32*, i32, i32, i64* }
%struct.TYPE_23__ = type { i64* }
%struct.TYPE_22__ = type { i64* }
%struct.TYPE_17__ = type { i32*, i32, i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported pixel format: %s\0A\00", align 1
@CU_AD_FORMAT_UNSIGNED_INT8 = common dso_local global i32 0, align 4
@CU_AD_FORMAT_UNSIGNED_INT16 = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Deinterlacing plane %d: pixel_size: %d channels: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %9, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 6
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %10, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %11, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  %39 = call i32 @CHECK_CU(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  br label %282

43:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %272, %43
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %275

52:                                               ; preds = %44
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 %59
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %19, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %272

67:                                               ; preds = %52
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sdiv i32 %74, 8
  store i32 %75, i32* %17, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp sgt i32 %81, 2
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %18, align 4
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %95

86:                                               ; preds = %83, %67
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.TYPE_18__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_18__* %87, i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %276

95:                                               ; preds = %83
  %96 = load i32, i32* %17, align 4
  switch i32 %96, label %125 [
    i32 1, label %97
    i32 2, label %111
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32 [ %103, %100 ], [ %107, %104 ]
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* @CU_AD_FORMAT_UNSIGNED_INT8, align 4
  store i32 %110, i32* %16, align 4
  br label %134

111:                                              ; preds = %95
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  br label %122

118:                                              ; preds = %111
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i32 [ %117, %114 ], [ %121, %118 ]
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* @CU_AD_FORMAT_UNSIGNED_INT16, align 4
  store i32 %124, i32* %16, align 4
  br label %134

125:                                              ; preds = %95
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.TYPE_18__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_18__* %126, i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %132)
  br label %276

134:                                              ; preds = %122, %108
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = load i32, i32* @AV_LOG_TRACE, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %18, align 4
  %142 = call i32 (%struct.TYPE_18__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_18__* %135, i32 %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %134
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  br label %191

190:                                              ; preds = %134
  br label %191

191:                                              ; preds = %190, %184
  %192 = phi i32 [ %189, %184 ], [ 0, %190 ]
  %193 = call i32 @AV_CEIL_RSHIFT(i32 %181, i32 %192)
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  br label %208

207:                                              ; preds = %191
  br label %208

208:                                              ; preds = %207, %201
  %209 = phi i32 [ %206, %201 ], [ 0, %207 ]
  %210 = call i32 @AV_CEIL_RSHIFT(i32 %198, i32 %209)
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 3
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %208
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  br label %240

239:                                              ; preds = %208
  br label %240

240:                                              ; preds = %239, %233
  %241 = phi i32 [ %238, %233 ], [ 0, %239 ]
  %242 = call i32 @AV_CEIL_RSHIFT(i32 %230, i32 %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  br label %255

254:                                              ; preds = %240
  br label %255

255:                                              ; preds = %254, %248
  %256 = phi i32 [ %253, %248 ], [ 0, %254 ]
  %257 = call i32 @AV_CEIL_RSHIFT(i32 %245, i32 %256)
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = sdiv i32 %264, %267
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @call_kernel(%struct.TYPE_18__* %143, i32 %144, i32 %154, i32 %164, i32 %174, i32 %175, i32 %176, i32 %193, i32 %210, i32 %219, i32 %227, i32 %242, i32 %257, i32 %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %255, %66
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %44

275:                                              ; preds = %44
  br label %276

276:                                              ; preds = %275, %125, %86
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 0
  %279 = load i32 (i32*)*, i32 (i32*)** %278, align 8
  %280 = call i32 %279(i32* %12)
  %281 = call i32 @CHECK_CU(i32 %280)
  br label %282

282:                                              ; preds = %276, %42
  ret void
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32, ...) #1

declare dso_local i32 @call_kernel(%struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
