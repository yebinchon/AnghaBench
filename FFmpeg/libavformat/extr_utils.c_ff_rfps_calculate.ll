; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_rfps_calculate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_rfps_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32***, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@MAX_STD_TIMEBASES = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rfps: %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Setting avg frame rate based on r frame rate\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rfps_calculate(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %427, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %430

19:                                               ; preds = %13
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %22, i64 %24
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %427

35:                                               ; preds = %19
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @tb_unreliable(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %100

43:                                               ; preds = %35
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 15
  br i1 %49, label %50, label %100

50:                                               ; preds = %43
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = mul nsw i64 500, %63
  %65 = sdiv i64 %59, %64
  %66 = call i32 @FFMAX(i32 1, i64 %65)
  %67 = icmp sgt i32 %55, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %50
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %89, %95
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @INT_MAX, align 4
  %99 = call i32 @av_reduce(i64* %77, i64* %80, i32 %85, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %74, %68, %50, %43, %35
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %330

107:                                              ; preds = %100
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %330, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @tb_unreliable(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %330

121:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  store double 1.000000e-02, double* %7, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = bitcast %struct.TYPE_16__* %8 to i8*
  %131 = bitcast %struct.TYPE_16__* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  br label %146

132:                                              ; preds = %121
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = bitcast %struct.TYPE_16__* %134 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call { i64, i64 } @av_inv_q(i64 %137, i64 %139)
  %141 = bitcast %struct.TYPE_16__* %8 to { i64, i64 }*
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 0
  %143 = extractvalue { i64, i64 } %140, 0
  store i64 %143, i64* %142, align 8
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 1
  %145 = extractvalue { i64, i64 } %140, 1
  store i64 %145, i64* %144, align 8
  br label %146

146:                                              ; preds = %132, %127
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %297, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @MAX_STD_TIMEBASES, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %300

151:                                              ; preds = %147
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %151
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sitofp i32 %163 to double
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = bitcast %struct.TYPE_16__* %166 to { i64, i64 }*
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %167, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call double @av_q2d(i64 %169, i64 %171)
  %173 = fmul double %164, %172
  %174 = load i32, i32* %4, align 4
  %175 = call double @get_std_framerate(i32 %174)
  %176 = fdiv double 1.151150e+04, %175
  %177 = fcmp olt double %173, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %158
  br label %297

179:                                              ; preds = %158, %151
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %4, align 4
  %188 = call double @get_std_framerate(i32 %187)
  %189 = fcmp olt double %188, 1.201200e+04
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %297

191:                                              ; preds = %186, %179
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = bitcast %struct.TYPE_16__* %193 to { i64, i64 }*
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call double @av_q2d(i64 %196, i64 %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = sitofp i32 %204 to double
  %206 = fmul double %199, %205
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sitofp i32 %211 to double
  %213 = fdiv double %206, %212
  %214 = load i32, i32* %4, align 4
  %215 = call double @get_std_framerate(i32 %214)
  %216 = fdiv double 9.609600e+03, %215
  %217 = fcmp olt double %213, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %191
  br label %297

219:                                              ; preds = %191
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %293, %219
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %296

223:                                              ; preds = %220
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %10, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 4
  %233 = load i32***, i32**** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32**, i32*** %233, i64 %235
  %237 = load i32**, i32*** %236, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %10, align 4
  %245 = sdiv i32 %243, %244
  %246 = sitofp i32 %245 to double
  store double %246, double* %11, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i32***, i32**** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32**, i32*** %251, i64 %253
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = sdiv i32 %261, %262
  %264 = sitofp i32 %263 to double
  %265 = load double, double* %11, align 8
  %266 = load double, double* %11, align 8
  %267 = fmul double %265, %266
  %268 = fsub double %264, %267
  store double %268, double* %12, align 8
  %269 = load double, double* %12, align 8
  %270 = load double, double* %7, align 8
  %271 = fcmp olt double %269, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %223
  %273 = load double, double* %7, align 8
  %274 = fcmp ogt double %273, 1.000000e-09
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load double, double* %12, align 8
  store double %276, double* %7, align 8
  %277 = load i32, i32* %4, align 4
  %278 = call double @get_std_framerate(i32 %277)
  %279 = fptosi double %278 to i32
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %275, %272, %223
  %281 = load double, double* %12, align 8
  %282 = fcmp olt double %281, 2.000000e-02
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %285 = load i32, i32* @AV_LOG_DEBUG, align 4
  %286 = load i32, i32* %4, align 4
  %287 = call double @get_std_framerate(i32 %286)
  %288 = fdiv double %287, 1.200000e+01
  %289 = fdiv double %288, 1.001000e+03
  %290 = load double, double* %12, align 8
  %291 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %284, i32 %285, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %289, double %290)
  br label %292

292:                                              ; preds = %283, %280
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %220

296:                                              ; preds = %220
  br label %297

297:                                              ; preds = %296, %218, %190, %178
  %298 = load i32, i32* %4, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %4, align 4
  br label %147

300:                                              ; preds = %147
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %329

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %303
  %308 = load i32, i32* %6, align 4
  %309 = sitofp i32 %308 to double
  %310 = fdiv double %309, 1.201200e+04
  %311 = bitcast %struct.TYPE_16__* %8 to { i64, i64 }*
  %312 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %311, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call double @av_q2d(i64 %313, i64 %315)
  %317 = fmul double 1.010000e+00, %316
  %318 = fcmp olt double %310, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %307, %303
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  %326 = load i32, i32* %6, align 4
  %327 = load i32, i32* @INT_MAX, align 4
  %328 = call i32 @av_reduce(i64* %322, i64* %325, i32 %326, i32 12012, i32 %327)
  br label %329

329:                                              ; preds = %319, %307, %300
  br label %330

330:                                              ; preds = %329, %113, %107, %100
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %408, label %336

336:                                              ; preds = %330
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %408

342:                                              ; preds = %336
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %408

349:                                              ; preds = %342
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = icmp sle i32 %354, 0
  br i1 %355, label %356, label %408

356:                                              ; preds = %349
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp sgt i32 %361, 2
  br i1 %362, label %363, label %408

363:                                              ; preds = %356
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 1
  %366 = bitcast %struct.TYPE_16__* %365 to { i64, i64 }*
  %367 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %366, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = call double @av_q2d(i64 %368, i64 %370)
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 3
  %374 = bitcast %struct.TYPE_16__* %373 to { i64, i64 }*
  %375 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %374, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = call double @av_q2d(i64 %376, i64 %378)
  %380 = fmul double %371, %379
  %381 = fdiv double 1.000000e+00, %380
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = sitofp i32 %386 to double
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sitofp i32 %392 to double
  %394 = fdiv double %387, %393
  %395 = fsub double %381, %394
  %396 = call double @llvm.fabs.f64(double %395)
  %397 = fcmp ole double %396, 1.000000e+00
  br i1 %397, label %398, label %408

398:                                              ; preds = %363
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %400 = load i32, i32* @AV_LOG_DEBUG, align 4
  %401 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %399, i32 %400, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  %406 = bitcast %struct.TYPE_16__* %403 to i8*
  %407 = bitcast %struct.TYPE_16__* %405 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %406, i8* align 8 %407, i64 16, i1 false)
  br label %408

408:                                              ; preds = %398, %363, %356, %349, %342, %336, %330
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 4
  %413 = call i32 @av_freep(i32**** %412)
  %414 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 5
  store i32 %414, i32* %418, align 8
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 0
  store i32 0, i32* %422, align 8
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 3
  store i32 0, i32* %426, align 4
  br label %427

427:                                              ; preds = %408, %34
  %428 = load i32, i32* %3, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %3, align 4
  br label %13

430:                                              ; preds = %13
  ret void
}

declare dso_local i64 @tb_unreliable(i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @av_reduce(i64*, i64*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @av_inv_q(i64, i64) #1

declare dso_local double @av_q2d(i64, i64) #1

declare dso_local double @get_std_framerate(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local i32 @av_freep(i32****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
