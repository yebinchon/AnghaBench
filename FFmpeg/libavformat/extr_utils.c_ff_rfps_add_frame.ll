; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_rfps_add_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_rfps_add_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32***, i64, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@RELATIVE_TS_BASE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MAX_STD_TIMEBASES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rfps_add_frame(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %375

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %375

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %375

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* @INT64_MAX, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %375

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @is_relative(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @RELATIVE_TS_BASE, align 8
  %51 = sub nsw i64 %49, %50
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @av_q2d(i32 %58)
  %60 = mul nsw i64 %55, %59
  %61 = sitofp i64 %60 to double
  store double %61, double* %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %12, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32***, i32**** %68, align 8
  %70 = icmp ne i32*** %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %54
  %72 = call i32*** @av_mallocz(i32 16)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32*** %72, i32**** %76, align 8
  br label %77

77:                                               ; preds = %71, %54
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32***, i32**** %81, align 8
  %83 = icmp ne i32*** %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = call i32 @AVERROR(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %386

87:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %179, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @MAX_STD_TIMEBASES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %182

92:                                               ; preds = %88
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32***, i32**** %96, align 8
  %98 = getelementptr inbounds i32**, i32*** %97, i64 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = fcmp olt double %106, 1.000000e+10
  br i1 %107, label %108, label %178

108:                                              ; preds = %92
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @get_std_framerate(i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load double, double* %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sitofp i32 %112 to double
  %114 = fmul double %111, %113
  %115 = fdiv double %114, 1.201200e+04
  store double %115, double* %14, align 8
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %174, %108
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %177

119:                                              ; preds = %116
  %120 = load double, double* %14, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sitofp i32 %121 to double
  %123 = fmul double %122, 5.000000e-01
  %124 = fadd double %120, %123
  %125 = call i64 @llrint(double %124)
  store i64 %125, i64* %15, align 8
  %126 = load double, double* %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = sitofp i64 %127 to double
  %129 = fsub double %126, %128
  %130 = load i32, i32* %9, align 4
  %131 = sitofp i32 %130 to double
  %132 = fmul double %131, 5.000000e-01
  %133 = fadd double %129, %132
  store double %133, double* %16, align 8
  %134 = load double, double* %16, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32***, i32**** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32**, i32*** %139, i64 %141
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sitofp i32 %149 to double
  %151 = fadd double %150, %134
  %152 = fptosi double %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load double, double* %16, align 8
  %154 = load double, double* %16, align 8
  %155 = fmul double %153, %154
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32***, i32**** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32**, i32*** %160, i64 %162
  %164 = load i32**, i32*** %163, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sitofp i32 %170 to double
  %172 = fadd double %171, %155
  %173 = fptosi double %172 to i32
  store i32 %173, i32* %169, align 4
  br label %174

174:                                              ; preds = %119
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %116

177:                                              ; preds = %116
  br label %178

178:                                              ; preds = %177, %92
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %88

182:                                              ; preds = %88
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @INT64_MAX, align 8
  %189 = load i64, i64* %12, align 8
  %190 = sub nsw i64 %188, %189
  %191 = icmp sle i64 %187, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %182
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %199
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %192, %182
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = srem i32 %211, 10
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %349

214:                                              ; preds = %206
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %345, %214
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @MAX_STD_TIMEBASES, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %348

224:                                              ; preds = %220
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32***, i32**** %228, align 8
  %230 = getelementptr inbounds i32**, i32*** %229, i64 0
  %231 = load i32**, i32*** %230, align 8
  %232 = getelementptr inbounds i32*, i32** %231, i64 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sitofp i32 %237 to double
  %239 = fcmp olt double %238, 1.000000e+10
  br i1 %239, label %240, label %344

240:                                              ; preds = %224
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32***, i32**** %244, align 8
  %246 = getelementptr inbounds i32**, i32*** %245, i64 0
  %247 = load i32**, i32*** %246, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %17, align 4
  %255 = sdiv i32 %253, %254
  %256 = sitofp i32 %255 to double
  store double %256, double* %18, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32***, i32**** %260, align 8
  %262 = getelementptr inbounds i32**, i32*** %261, i64 0
  %263 = load i32**, i32*** %262, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %17, align 4
  %271 = sdiv i32 %269, %270
  %272 = sitofp i32 %271 to double
  %273 = load double, double* %18, align 8
  %274 = load double, double* %18, align 8
  %275 = fmul double %273, %274
  %276 = fsub double %272, %275
  store double %276, double* %19, align 8
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32***, i32**** %280, align 8
  %282 = getelementptr inbounds i32**, i32*** %281, i64 1
  %283 = load i32**, i32*** %282, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %17, align 4
  %291 = sdiv i32 %289, %290
  %292 = sitofp i32 %291 to double
  store double %292, double* %20, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 1
  %297 = load i32***, i32**** %296, align 8
  %298 = getelementptr inbounds i32**, i32*** %297, i64 1
  %299 = load i32**, i32*** %298, align 8
  %300 = getelementptr inbounds i32*, i32** %299, i64 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %17, align 4
  %307 = sdiv i32 %305, %306
  %308 = sitofp i32 %307 to double
  %309 = load double, double* %20, align 8
  %310 = load double, double* %20, align 8
  %311 = fmul double %309, %310
  %312 = fsub double %308, %311
  store double %312, double* %21, align 8
  %313 = load double, double* %19, align 8
  %314 = fcmp ogt double %313, 4.000000e-02
  br i1 %314, label %315, label %343

315:                                              ; preds = %240
  %316 = load double, double* %21, align 8
  %317 = fcmp ogt double %316, 4.000000e-02
  br i1 %317, label %318, label %343

318:                                              ; preds = %315
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32***, i32**** %322, align 8
  %324 = getelementptr inbounds i32**, i32*** %323, i64 0
  %325 = load i32**, i32*** %324, align 8
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 undef, i32* %330, align 4
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  %335 = load i32***, i32**** %334, align 8
  %336 = getelementptr inbounds i32**, i32*** %335, i64 1
  %337 = load i32**, i32*** %336, align 8
  %338 = getelementptr inbounds i32*, i32** %337, i64 1
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 undef, i32* %342, align 4
  br label %343

343:                                              ; preds = %318, %315, %240
  br label %344

344:                                              ; preds = %343, %224
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %220

348:                                              ; preds = %220
  br label %349

349:                                              ; preds = %348, %206
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = icmp sgt i32 %354, 3
  br i1 %355, label %356, label %374

356:                                              ; preds = %349
  %357 = load i64, i64* %7, align 8
  %358 = call i64 @is_relative(i64 %357)
  %359 = load i64, i64* %10, align 8
  %360 = call i64 @is_relative(i64 %359)
  %361 = icmp eq i64 %358, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = load i64, i64* %12, align 8
  %369 = call i32 @av_gcd(i32 %367, i64 %368)
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 4
  store i32 %369, i32* %373, align 4
  br label %374

374:                                              ; preds = %362, %356, %349
  br label %375

375:                                              ; preds = %374, %38, %34, %30, %3
  %376 = load i64, i64* %7, align 8
  %377 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load i64, i64* %7, align 8
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  store i64 %380, i64* %384, align 8
  br label %385

385:                                              ; preds = %379, %375
  store i32 0, i32* %4, align 4
  br label %386

386:                                              ; preds = %385, %84
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

declare dso_local i64 @is_relative(i64) #1

declare dso_local i64 @av_q2d(i32) #1

declare dso_local i32*** @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_std_framerate(i32) #1

declare dso_local i64 @llrint(double) #1

declare dso_local i32 @av_gcd(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
