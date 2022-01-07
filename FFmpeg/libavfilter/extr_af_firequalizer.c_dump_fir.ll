; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_dump_fir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_dump_fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__**, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32, i32, double*, i64, i32, i64 }

@SCALE_LOGLIN = common dso_local global i64 0, align 8
@SCALE_LOGLOG = common dso_local global i64 0, align 8
@SCALE_LINLOG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"# time[%d] (time amplitude)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%15.10f %15.10f\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\0A\0A# freq[%d] (frequency desired_gain actual_gain)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%17.10f %17.10f %17.10f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @dump_fir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_fir(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCALE_LOGLIN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SCALE_LOGLOG, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %3
  %40 = phi i1 [ true, %3 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCALE_LINLOG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SCALE_LOGLOG, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i1 [ true, %39 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %71

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* %8, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %67, %69
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi double [ 0.000000e+00, %64 ], [ %70, %65 ]
  store double %72, double* %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, %81
  store i32 %87, i32* %85, align 4
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %121, %77
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, %96
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %107, 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, %108
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %88

124:                                              ; preds = %88
  br label %149

125:                                              ; preds = %71
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %145, %125
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, %136
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %126

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148, %124
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %220, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %190, %163
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load i32*, i32** %5, align 8
  %170 = load double, double* %13, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sitofp i32 %171 to double
  %173 = load i32, i32* %8, align 4
  %174 = sitofp i32 %173 to double
  %175 = fdiv double %172, %174
  %176 = fsub double %170, %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sitofp i32 %187 to double
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %176, double %188)
  br label %190

190:                                              ; preds = %168
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %11, align 4
  br label %165

193:                                              ; preds = %165
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %216, %193
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %194
  %199 = load i32*, i32** %5, align 8
  %200 = load double, double* %13, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sitofp i32 %201 to double
  %203 = load i32, i32* %8, align 4
  %204 = sitofp i32 %203 to double
  %205 = fdiv double %202, %204
  %206 = fadd double %200, %205
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to double
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %206, double %214)
  br label %216

216:                                              ; preds = %198
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %194

219:                                              ; preds = %194
  br label %247

220:                                              ; preds = %155
  store i32 0, i32* %11, align 4
  br label %221

221:                                              ; preds = %243, %220
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %221
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sitofp i32 %229 to double
  %231 = load i32, i32* %8, align 4
  %232 = sitofp i32 %231 to double
  %233 = fdiv double %230, %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sitofp i32 %240 to double
  %242 = call i32 (i32*, i8*, ...) @fprintf(i32* %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %233, double %241)
  br label %243

243:                                              ; preds = %227
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %221

246:                                              ; preds = %221
  br label %247

247:                                              ; preds = %246, %219
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @av_rdft_calc(i32 %250, i32* %253)
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 (i32*, i8*, ...) @fprintf(i32* %255, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %256)
  store i32 0, i32* %11, align 4
  br label %258

258:                                              ; preds = %362, %247
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = sdiv i32 %262, 2
  %264 = icmp sle i32 %259, %263
  br i1 %264, label %265, label %365

265:                                              ; preds = %258
  %266 = load i32, i32* %11, align 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = sdiv i32 %269, 2
  %271 = icmp eq i32 %266, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %276

273:                                              ; preds = %265
  %274 = load i32, i32* %11, align 4
  %275 = mul nsw i32 2, %274
  br label %276

276:                                              ; preds = %273, %272
  %277 = phi i32 [ 1, %272 ], [ %275, %273 ]
  store i32 %277, i32* %17, align 4
  %278 = load i32, i32* %11, align 4
  %279 = sitofp i32 %278 to double
  %280 = load i32, i32* %8, align 4
  %281 = sitofp i32 %280 to double
  %282 = fmul double %279, %281
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = sitofp i32 %285 to double
  %287 = fdiv double %282, %286
  store double %287, double* %14, align 8
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %276
  %291 = load double, double* %14, align 8
  %292 = fmul double 5.000000e-02, %291
  %293 = call double @log2(double %292) #4
  store double %293, double* %14, align 8
  br label %294

294:                                              ; preds = %290, %276
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 5
  %297 = load double*, double** %296, align 8
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double, double* %297, i64 %299
  %301 = load double, double* %300, align 8
  store double %301, double* %15, align 8
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %326

306:                                              ; preds = %294
  %307 = load i32, i32* %17, align 4
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %326

309:                                              ; preds = %306
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %17, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %17, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call double @hypotf(i32 %316, i32 %324)
  br label %335

326:                                              ; preds = %306, %294
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = sitofp i32 %333 to double
  br label %335

335:                                              ; preds = %326, %309
  %336 = phi double [ %325, %309 ], [ %334, %326 ]
  store double %336, double* %16, align 8
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = load double, double* %16, align 8
  %343 = call double @llvm.fabs.f64(double %342)
  store double %343, double* %16, align 8
  br label %344

344:                                              ; preds = %341, %335
  %345 = load i32, i32* %10, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %344
  %348 = load double, double* %15, align 8
  %349 = call double @llvm.fabs.f64(double %348)
  %350 = call double @log10(double %349) #4
  %351 = fmul double 2.000000e+01, %350
  store double %351, double* %15, align 8
  %352 = load double, double* %16, align 8
  %353 = call double @llvm.fabs.f64(double %352)
  %354 = call double @log10(double %353) #4
  %355 = fmul double 2.000000e+01, %354
  store double %355, double* %16, align 8
  br label %356

356:                                              ; preds = %347, %344
  %357 = load i32*, i32** %5, align 8
  %358 = load double, double* %14, align 8
  %359 = load double, double* %15, align 8
  %360 = load double, double* %16, align 8
  %361 = call i32 (i32*, i8*, ...) @fprintf(i32* %357, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), double %358, double %359, double %360)
  br label %362

362:                                              ; preds = %356
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  br label %258

365:                                              ; preds = %258
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @av_rdft_calc(i32, i32*) #1

; Function Attrs: nounwind
declare dso_local double @log2(double) #2

declare dso_local double @hypotf(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare dso_local double @log10(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
