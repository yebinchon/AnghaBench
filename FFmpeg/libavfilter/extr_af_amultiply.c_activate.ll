; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amultiply.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amultiply.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__**, i32*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__**, %struct.TYPE_16__*, i32 }
%struct.TYPE_21__ = type { i32, i64*, i32 }
%struct.TYPE_16__ = type { i32 (double*, double*, double*, i32)*, i32 (float*, float*, float*, i32)* }
%struct.TYPE_18__ = type { i64*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32 %19, %struct.TYPE_19__* %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %24, i64 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = call i64 @ff_inlink_queued_samples(%struct.TYPE_20__* %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %30, i64 1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = call i64 @ff_inlink_queued_samples(%struct.TYPE_20__* %32)
  %34 = call i32 @FFMIN(i64 %27, i64 %33)
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %90, %1
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %93

46:                                               ; preds = %44
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %49, i64 %51
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = icmp ne %struct.TYPE_21__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %90

56:                                               ; preds = %46
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %59, i64 %61
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @ff_inlink_check_available_samples(%struct.TYPE_20__* %63, i32 %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %56
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %70, i64 %72
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %79, i64 %81
  %83 = call i32 @ff_inlink_consume_samples(%struct.TYPE_20__* %74, i32 %75, i32 %76, %struct.TYPE_21__** %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %67
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %378

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %35

93:                                               ; preds = %44
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %96, i64 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = icmp ne %struct.TYPE_21__* %98, null
  br i1 %99, label %100, label %310

100:                                              ; preds = %93
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %103, i64 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = icmp ne %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %310

107:                                              ; preds = %100
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %110, i64 0
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @av_sample_fmt_is_planar(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %107
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %120, i64 0
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @FFALIGN(i32 %124, i32 %127)
  store i32 %128, i32* %11, align 4
  br label %145

129:                                              ; preds = %107
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %132, i64 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @FFALIGN(i32 %140, i32 %143)
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %129, %117
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %153, i64 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.TYPE_18__* @ff_get_audio_buffer(i32 %150, i32 %157)
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %10, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %160 = icmp ne %struct.TYPE_18__* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %145
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %378

164:                                              ; preds = %145
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %167, i64 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %176, i64 0
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @av_get_packed_sample_fmt(i32 %180)
  %182 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %235

184:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %231, %184
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %234

191:                                              ; preds = %185
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i32 (float*, float*, float*, i32)*, i32 (float*, float*, float*, i32)** %195, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to float*
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %207, i64 0
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to float*
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %219, i64 1
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to float*
  %229 = load i32, i32* %11, align 4
  %230 = call i32 %196(float* %204, float* %216, float* %228, i32 %229)
  br label %231

231:                                              ; preds = %191
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %185

234:                                              ; preds = %185
  br label %286

235:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %282, %235
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %285

242:                                              ; preds = %236
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i32 (double*, double*, double*, i32)*, i32 (double*, double*, double*, i32)** %246, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to double*
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %258, i64 0
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to double*
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %270, i64 1
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to double*
  %280 = load i32, i32* %11, align 4
  %281 = call i32 %247(double* %255, double* %267, double* %279, i32 %280)
  br label %282

282:                                              ; preds = %242
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %5, align 4
  br label %236

285:                                              ; preds = %236
  br label %286

286:                                              ; preds = %285, %234
  %287 = call i32 (...) @emms_c()
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %290, i64 0
  %292 = call i32 @av_frame_free(%struct.TYPE_21__** %291)
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %295, i64 1
  %297 = call i32 @av_frame_free(%struct.TYPE_21__** %296)
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %304 = call i32 @ff_filter_frame(i32 %302, %struct.TYPE_18__* %303)
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %286
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %2, align 4
  br label %378

309:                                              ; preds = %286
  br label %310

310:                                              ; preds = %309, %100, %93
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %341, label %313

313:                                              ; preds = %310
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %337, %313
  %315 = load i32, i32* %5, align 4
  %316 = icmp slt i32 %315, 2
  br i1 %316, label %317, label %340

317:                                              ; preds = %314
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %320, i64 %322
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %323, align 8
  %325 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_20__* %324, i32* %7, i32* %9)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %317
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %9, align 4
  %335 = call i32 @ff_outlink_set_status(i32 %332, i32 %333, i32 %334)
  store i32 0, i32* %2, align 4
  br label %378

336:                                              ; preds = %317
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %5, align 4
  br label %314

340:                                              ; preds = %314
  br label %341

341:                                              ; preds = %340, %310
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = call i64 @ff_outlink_frame_wanted(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %377

349:                                              ; preds = %341
  store i32 0, i32* %5, align 4
  br label %350

350:                                              ; preds = %373, %349
  %351 = load i32, i32* %5, align 4
  %352 = icmp slt i32 %351, 2
  br i1 %352, label %353, label %376

353:                                              ; preds = %350
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %356, i64 %358
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %359, align 8
  %361 = call i64 @ff_inlink_queued_samples(%struct.TYPE_20__* %360)
  %362 = icmp sgt i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %353
  br label %373

364:                                              ; preds = %353
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %366, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %367, i64 %369
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %370, align 8
  %372 = call i32 @ff_inlink_request_frame(%struct.TYPE_20__* %371)
  store i32 0, i32* %2, align 4
  br label %378

373:                                              ; preds = %363
  %374 = load i32, i32* %5, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %5, align 4
  br label %350

376:                                              ; preds = %350
  br label %377

377:                                              ; preds = %376, %341
  store i32 0, i32* %2, align 4
  br label %378

378:                                              ; preds = %377, %364, %327, %307, %161, %86
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @FFMIN(i64, i64) #1

declare dso_local i64 @ff_inlink_queued_samples(%struct.TYPE_20__*) #1

declare dso_local i64 @ff_inlink_check_available_samples(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ff_inlink_consume_samples(%struct.TYPE_20__*, i32, i32, %struct.TYPE_21__**) #1

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ff_get_audio_buffer(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(i32, i32, i32) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32) #1

declare dso_local i32 @ff_inlink_request_frame(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
