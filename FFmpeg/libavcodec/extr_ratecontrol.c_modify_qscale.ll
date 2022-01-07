; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_modify_qscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_modify_qscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, double, double, double, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { double, double, double, double, i32, double }
%struct.TYPE_12__ = type { double }
%struct.TYPE_11__ = type { i32 }

@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@FF_DEBUG_RC = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"limiting QP %f -> %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"q:%f max:%f min:%f size:%f index:%f agr:%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_13__*, %struct.TYPE_11__*, double, i32)* @modify_qscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @modify_qscale(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = call double @get_fps(%struct.TYPE_14__* %32)
  store double %33, double* %11, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = load double, double* %11, align 8
  %40 = fdiv double %38, %39
  store double %40, double* %12, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = load double, double* %11, align 8
  %47 = fdiv double %45, %46
  store double %47, double* %13, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @get_qminmax(i32* %15, i32* %16, %struct.TYPE_13__* %51, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = srem i32 %59, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = load double, double* %7, align 8
  %74 = fmul double %73, %72
  store double %74, double* %7, align 8
  br label %75

75:                                               ; preds = %69, %65, %58, %4
  %76 = load double, double* %10, align 8
  %77 = fcmp une double %76, 0.000000e+00
  br i1 %77, label %78, label %208

78:                                               ; preds = %75
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  store double %81, double* %17, align 8
  %82 = load double, double* %12, align 8
  %83 = fcmp une double %82, 0.000000e+00
  br i1 %83, label %84, label %147

84:                                               ; preds = %78
  %85 = load double, double* %10, align 8
  %86 = load double, double* %17, align 8
  %87 = fsub double %85, %86
  %88 = fmul double 2.000000e+00, %87
  %89 = load double, double* %10, align 8
  %90 = fdiv double %88, %89
  store double %90, double* %19, align 8
  %91 = load double, double* %19, align 8
  %92 = fcmp ogt double %91, 1.000000e+00
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store double 1.000000e+00, double* %19, align 8
  br label %99

94:                                               ; preds = %84
  %95 = load double, double* %19, align 8
  %96 = fcmp olt double %95, 1.000000e-04
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store double 1.000000e-04, double* %19, align 8
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %93
  %100 = load double, double* %19, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load double, double* %102, align 8
  %104 = fdiv double 1.000000e+00, %103
  %105 = call double @pow(double %100, double %104) #3
  %106 = load double, double* %7, align 8
  %107 = fmul double %106, %105
  store double %107, double* %7, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = load double, double* %12, align 8
  %110 = load double, double* %10, align 8
  %111 = fsub double %109, %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load double, double* %113, align 8
  %115 = fadd double %111, %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load double, double* %119, align 8
  %121 = fmul double %115, %120
  %122 = call i32 @FFMAX(double %121, i32 1)
  %123 = call double @bits2qp(%struct.TYPE_11__* %108, i32 %122)
  store double %123, double* %18, align 8
  %124 = load double, double* %7, align 8
  %125 = load double, double* %18, align 8
  %126 = fcmp ogt double %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %99
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FF_DEBUG_RC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i32, i32* @AV_LOG_DEBUG, align 4
  %141 = load double, double* %7, align 8
  %142 = load double, double* %18, align 8
  %143 = call i32 @av_log(%struct.TYPE_14__* %139, i32 %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %141, double %142)
  br label %144

144:                                              ; preds = %136, %127
  %145 = load double, double* %18, align 8
  store double %145, double* %7, align 8
  br label %146

146:                                              ; preds = %144, %99
  br label %147

147:                                              ; preds = %146, %78
  %148 = load double, double* %13, align 8
  %149 = fcmp une double %148, 0.000000e+00
  br i1 %149, label %150, label %207

150:                                              ; preds = %147
  %151 = load double, double* %17, align 8
  %152 = fmul double 2.000000e+00, %151
  %153 = load double, double* %10, align 8
  %154 = fdiv double %152, %153
  store double %154, double* %20, align 8
  %155 = load double, double* %20, align 8
  %156 = fcmp ogt double %155, 1.000000e+00
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store double 1.000000e+00, double* %20, align 8
  br label %163

158:                                              ; preds = %150
  %159 = load double, double* %20, align 8
  %160 = fcmp olt double %159, 1.000000e-04
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store double 1.000000e-04, double* %20, align 8
  br label %162

162:                                              ; preds = %161, %158
  br label %163

163:                                              ; preds = %162, %157
  %164 = load double, double* %20, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load double, double* %166, align 8
  %168 = fdiv double 1.000000e+00, %167
  %169 = call double @pow(double %164, double %168) #3
  %170 = load double, double* %7, align 8
  %171 = fdiv double %170, %169
  store double %171, double* %7, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load double, double* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 5
  %180 = load double, double* %179, align 8
  %181 = fmul double %175, %180
  %182 = call i32 @FFMAX(double %181, i32 1)
  %183 = call double @bits2qp(%struct.TYPE_11__* %172, i32 %182)
  store double %183, double* %18, align 8
  %184 = load double, double* %7, align 8
  %185 = load double, double* %18, align 8
  %186 = fcmp olt double %184, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %163
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @FF_DEBUG_RC, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %187
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = load i32, i32* @AV_LOG_DEBUG, align 4
  %201 = load double, double* %7, align 8
  %202 = load double, double* %18, align 8
  %203 = call i32 @av_log(%struct.TYPE_14__* %199, i32 %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %201, double %202)
  br label %204

204:                                              ; preds = %196, %187
  %205 = load double, double* %18, align 8
  store double %205, double* %7, align 8
  br label %206

206:                                              ; preds = %204, %163
  br label %207

207:                                              ; preds = %206, %147
  br label %208

208:                                              ; preds = %207, %75
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = load double, double* %7, align 8
  %211 = load double, double* %13, align 8
  %212 = load double, double* %12, align 8
  %213 = load double, double* %10, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load double, double* %215, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load double, double* %218, align 8
  %220 = call i32 @ff_dlog(%struct.TYPE_13__* %209, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), double %210, double %211, double %212, double %213, double %216, double %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load double, double* %222, align 8
  %224 = fcmp oeq double %223, 0.000000e+00
  br i1 %224, label %229, label %225

225:                                              ; preds = %208
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %247

229:                                              ; preds = %225, %208
  %230 = load double, double* %7, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sitofp i32 %231 to double
  %233 = fcmp olt double %230, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* %15, align 4
  %236 = sitofp i32 %235 to double
  store double %236, double* %7, align 8
  br label %246

237:                                              ; preds = %229
  %238 = load double, double* %7, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sitofp i32 %239 to double
  %241 = fcmp ogt double %238, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %16, align 4
  %244 = sitofp i32 %243 to double
  store double %244, double* %7, align 8
  br label %245

245:                                              ; preds = %242, %237
  br label %246

246:                                              ; preds = %245, %234
  br label %279

247:                                              ; preds = %225
  %248 = load i32, i32* %15, align 4
  %249 = sitofp i32 %248 to double
  %250 = call double @log(double %249) #3
  store double %250, double* %21, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sitofp i32 %251 to double
  %253 = call double @log(double %252) #3
  store double %253, double* %22, align 8
  %254 = load double, double* %7, align 8
  %255 = call double @log(double %254) #3
  store double %255, double* %7, align 8
  %256 = load double, double* %7, align 8
  %257 = load double, double* %21, align 8
  %258 = fsub double %256, %257
  %259 = load double, double* %22, align 8
  %260 = load double, double* %21, align 8
  %261 = fsub double %259, %260
  %262 = fdiv double %258, %261
  %263 = fsub double %262, 5.000000e-01
  store double %263, double* %7, align 8
  %264 = load double, double* %7, align 8
  %265 = fmul double %264, -4.000000e+00
  store double %265, double* %7, align 8
  %266 = load double, double* %7, align 8
  %267 = call double @exp(double %266) #3
  %268 = fadd double 1.000000e+00, %267
  %269 = fdiv double 1.000000e+00, %268
  store double %269, double* %7, align 8
  %270 = load double, double* %7, align 8
  %271 = load double, double* %22, align 8
  %272 = load double, double* %21, align 8
  %273 = fsub double %271, %272
  %274 = fmul double %270, %273
  %275 = load double, double* %21, align 8
  %276 = fadd double %274, %275
  store double %276, double* %7, align 8
  %277 = load double, double* %7, align 8
  %278 = call double @exp(double %277) #3
  store double %278, double* %7, align 8
  br label %279

279:                                              ; preds = %247, %246
  %280 = load double, double* %7, align 8
  ret double %280
}

declare dso_local double @get_fps(%struct.TYPE_14__*) #1

declare dso_local i32 @get_qminmax(i32*, i32*, %struct.TYPE_13__*, i32) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local double @bits2qp(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FFMAX(double, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, double, double) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_13__*, i8*, double, double, double, double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
