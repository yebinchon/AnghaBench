; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_16__*, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, double*, double*, i32, i32)* }
%struct.TYPE_16__ = type { i32*, i64* }
%struct.TYPE_18__ = type { i32*, i32, i32, i64*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LUV = common dso_local global i64 0, align 8
@UCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %6, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %7, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %36, i64 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %8, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 65535
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %49, i32 %52, i32 %55)
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %12, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = icmp ne %struct.TYPE_18__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %2
  %60 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %418

63:                                               ; preds = %2
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %63
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = call i32 @draw_background(%struct.TYPE_20__* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i32 @av_frame_free(%struct.TYPE_18__** %12)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %3, align 4
  br label %418

81:                                               ; preds = %73
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %63
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %111, %84
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %96, %104
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 8
  %110 = call i32 @memset(i64 %105, i32 0, i32 %109)
  br label %111

111:                                              ; preds = %91
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %85

114:                                              ; preds = %85
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %243, %114
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %246

121:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %239, %121
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %242

128:                                              ; preds = %122
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 7
  %131 = load i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, double*, double*, i32, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, double*, double*, i32, i32)** %130, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 %131(%struct.TYPE_20__* %132, %struct.TYPE_18__* %133, double* %16, double* %17, i32 %134, i32 %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @LUV, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %128
  %143 = load double, double* %16, align 8
  %144 = load double, double* %17, align 8
  %145 = call i32 @xy_to_upvp(double %143, double %144, double* %21, double* %22)
  %146 = load double, double* %21, align 8
  store double %146, double* %16, align 8
  %147 = load double, double* %22, align 8
  store double %147, double* %17, align 8
  br label %161

148:                                              ; preds = %128
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @UCS, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load double, double* %16, align 8
  %156 = load double, double* %17, align 8
  %157 = call i32 @xy_to_uv(double %155, double %156, double* %23, double* %24)
  %158 = load double, double* %23, align 8
  store double %158, double* %16, align 8
  %159 = load double, double* %24, align 8
  store double %159, double* %17, align 8
  br label %160

160:                                              ; preds = %154, %148
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sitofp i32 %163 to double
  %165 = load double, double* %16, align 8
  %166 = fmul double %164, %165
  %167 = fptosi double %166 to i32
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sitofp i32 %169 to double
  %171 = load i32, i32* %11, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sitofp i32 %172 to double
  %174 = load double, double* %17, align 8
  %175 = fmul double %173, %174
  %176 = fsub double %170, %175
  %177 = fptosi double %176 to i32
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %161
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %20, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %184, %180, %161
  br label %239

192:                                              ; preds = %187
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %20, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %198, %203
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %197, %205
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %206, %209
  %211 = add nsw i64 %210, 0
  %212 = inttoptr i64 %211 to i32*
  store i32* %212, i32** %18, align 8
  %213 = load i32*, i32** %18, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %215, %216
  %218 = call i32 @FFMIN(i32 %217, i32 65535)
  %219 = load i32*, i32** %18, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 %218, i32* %220, align 4
  %221 = load i32*, i32** %18, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i32 @FFMIN(i32 %225, i32 65535)
  %227 = load i32*, i32** %18, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %226, i32* %228, align 4
  %229 = load i32*, i32** %18, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %231, %232
  %234 = call i32 @FFMIN(i32 %233, i32 65535)
  %235 = load i32*, i32** %18, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  store i32 %234, i32* %236, align 4
  %237 = load i32*, i32** %18, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  store i32 65535, i32* %238, align 4
  br label %239

239:                                              ; preds = %192, %191
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %122

242:                                              ; preds = %122
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %115

246:                                              ; preds = %115
  store i32 0, i32* %15, align 4
  br label %247

247:                                              ; preds = %354, %246
  %248 = load i32, i32* %15, align 4
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %357

253:                                              ; preds = %247
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 3
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %259, %264
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %258, %266
  %268 = inttoptr i64 %267 to i32*
  store i32* %268, i32** %25, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 6
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 6
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %276, %283
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %275, %285
  %287 = inttoptr i64 %286 to i32*
  store i32* %287, i32** %26, align 8
  store i32 0, i32* %14, align 4
  br label %288

288:                                              ; preds = %350, %253
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %353

294:                                              ; preds = %288
  %295 = load i32, i32* %14, align 4
  %296 = mul nsw i32 %295, 4
  store i32 %296, i32* %27, align 4
  %297 = load i32*, i32** %25, align 8
  %298 = load i32, i32* %27, align 4
  %299 = add nsw i32 %298, 3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %349

304:                                              ; preds = %294
  %305 = load i32*, i32** %26, align 8
  %306 = load i32, i32* %27, align 4
  %307 = add nsw i32 %306, 0
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %25, align 8
  %312 = load i32, i32* %27, align 4
  %313 = add nsw i32 %312, 0
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  store i32 %310, i32* %315, align 4
  %316 = load i32*, i32** %26, align 8
  %317 = load i32, i32* %27, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32*, i32** %25, align 8
  %323 = load i32, i32* %27, align 4
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %321, i32* %326, align 4
  %327 = load i32*, i32** %26, align 8
  %328 = load i32, i32* %27, align 4
  %329 = add nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %327, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %25, align 8
  %334 = load i32, i32* %27, align 4
  %335 = add nsw i32 %334, 2
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 %332, i32* %337, align 4
  %338 = load i32*, i32** %26, align 8
  %339 = load i32, i32* %27, align 4
  %340 = add nsw i32 %339, 3
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** %25, align 8
  %345 = load i32, i32* %27, align 4
  %346 = add nsw i32 %345, 3
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  store i32 %343, i32* %348, align 4
  br label %349

349:                                              ; preds = %304, %294
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %14, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %14, align 4
  br label %288

353:                                              ; preds = %288
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %15, align 4
  br label %247

357:                                              ; preds = %247
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 5
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %388

362:                                              ; preds = %357
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 3
  %365 = load i64*, i64** %364, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 0
  %367 = load i64, i64* %366, align 8
  %368 = inttoptr i64 %367 to i32*
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = sdiv i32 %373, 2
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @plot_white_point(i32* %368, i32 %374, i32 %377, i32 %380, i32 65535, i32 %383, i64 %386)
  br label %388

388:                                              ; preds = %362, %357
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 3
  %391 = load i64*, i64** %390, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 0
  %393 = load i64, i64* %392, align 8
  %394 = inttoptr i64 %393 to i32*
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = sdiv i32 %399, 2
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @plot_gamuts(i32* %394, i32 %400, i32 %403, i32 %406, i64 %409, i32 %412)
  %414 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %417 = call i32 @ff_filter_frame(%struct.TYPE_19__* %415, %struct.TYPE_18__* %416)
  store i32 %417, i32* %3, align 4
  br label %418

418:                                              ; preds = %388, %78, %59
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @draw_background(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @xy_to_upvp(double, double, double*, double*) #1

declare dso_local i32 @xy_to_uv(double, double, double*, double*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @plot_white_point(i32*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @plot_gamuts(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
