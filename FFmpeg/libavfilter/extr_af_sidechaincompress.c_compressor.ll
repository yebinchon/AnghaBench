; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sidechaincompress.c_compressor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sidechaincompress.c_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, i32, double, double, double, double, double, double, double, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, double*, double*, double*, i32, double, double, %struct.TYPE_7__*, %struct.TYPE_7__*)* @compressor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor(%struct.TYPE_6__* %0, double* %1, double* %2, double* %3, i32 %4, double %5, double %6, %struct.TYPE_7__* %7, %struct.TYPE_7__* %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store double* %1, double** %11, align 8
  store double* %2, double** %12, align 8
  store double* %3, double** %13, align 8
  store i32 %4, i32* %14, align 4
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %18, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %19, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  store double %32, double* %20, align 8
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %269, %9
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %272

37:                                               ; preds = %33
  store double 1.000000e+00, double* %24, align 8
  %38 = load double*, double** %13, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = load double, double* %16, align 8
  %42 = fmul double %40, %41
  %43 = call double @llvm.fabs.f64(double %42)
  store double %43, double* %23, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %70

48:                                               ; preds = %37
  store i32 1, i32* %22, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %22, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load double*, double** %13, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load double, double* %16, align 8
  %62 = fmul double %60, %61
  %63 = call double @llvm.fabs.f64(double %62)
  %64 = load double, double* %23, align 8
  %65 = call double @FFMAX(double %63, double %64)
  store double %65, double* %23, align 8
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %22, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %22, align 4
  br label %49

69:                                               ; preds = %49
  br label %98

70:                                               ; preds = %37
  store i32 1, i32* %22, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %22, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load double*, double** %13, align 8
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double, double* %16, align 8
  %84 = fmul double %82, %83
  %85 = call double @llvm.fabs.f64(double %84)
  %86 = load double, double* %23, align 8
  %87 = fadd double %86, %85
  store double %87, double* %23, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %22, align 4
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = load double, double* %23, align 8
  %97 = fdiv double %96, %95
  store double %97, double* %23, align 8
  br label %98

98:                                               ; preds = %91, %69
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load double, double* %23, align 8
  %105 = load double, double* %23, align 8
  %106 = fmul double %105, %104
  store double %106, double* %23, align 8
  br label %107

107:                                              ; preds = %103, %98
  %108 = load double, double* %23, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load double, double* %110, align 8
  %112 = fsub double %108, %111
  %113 = load double, double* %23, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load double, double* %115, align 8
  %117 = fcmp ogt double %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %107
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load double, double* %120, align 8
  br label %126

122:                                              ; preds = %107
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load double, double* %124, align 8
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi double [ %121, %118 ], [ %125, %122 ]
  %128 = fmul double %112, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load double, double* %130, align 8
  %132 = fadd double %131, %128
  store double %132, double* %130, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %126
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 11
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 6
  %145 = load double, double* %144, align 8
  br label %150

146:                                              ; preds = %137
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load double, double* %148, align 8
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi double [ %145, %142 ], [ %149, %146 ]
  store double %151, double* %25, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load double, double* %153, align 8
  %155 = load double, double* %25, align 8
  %156 = fcmp olt double %154, %155
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %26, align 4
  br label %179

158:                                              ; preds = %126
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 11
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 8
  %166 = load double, double* %165, align 8
  br label %171

167:                                              ; preds = %158
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 9
  %170 = load double, double* %169, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = phi double [ %166, %163 ], [ %170, %167 ]
  store double %172, double* %25, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load double, double* %174, align 8
  %176 = load double, double* %25, align 8
  %177 = fcmp ogt double %175, %176
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %26, align 4
  br label %179

179:                                              ; preds = %171, %150
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load double, double* %181, align 8
  %183 = fcmp ogt double %182, 0.000000e+00
  br i1 %183, label %184, label %219

184:                                              ; preds = %179
  %185 = load i32, i32* %26, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %219

187:                                              ; preds = %184
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load double, double* %189, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 17
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 16
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 15
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 14
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 13
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 11
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 10
  %217 = load i64, i64* %216, align 8
  %218 = call double @output_gain(double %190, i32 %193, i32 %196, i32 %199, i32 %202, i32 %205, i32 %208, i32 %211, i64 %214, i64 %217)
  store double %218, double* %24, align 8
  br label %219

219:                                              ; preds = %187, %184, %179
  store i32 0, i32* %22, align 4
  br label %220

220:                                              ; preds = %247, %219
  %221 = load i32, i32* %22, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %250

226:                                              ; preds = %220
  %227 = load double*, double** %11, align 8
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %227, i64 %229
  %231 = load double, double* %230, align 8
  %232 = load double, double* %15, align 8
  %233 = fmul double %231, %232
  %234 = load double, double* %24, align 8
  %235 = load double, double* %19, align 8
  %236 = fmul double %234, %235
  %237 = load double, double* %20, align 8
  %238 = fmul double %236, %237
  %239 = load double, double* %20, align 8
  %240 = fsub double 1.000000e+00, %239
  %241 = fadd double %238, %240
  %242 = fmul double %233, %241
  %243 = load double*, double** %12, align 8
  %244 = load i32, i32* %22, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  store double %242, double* %246, align 8
  br label %247

247:                                              ; preds = %226
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %22, align 4
  br label %220

250:                                              ; preds = %220
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load double*, double** %11, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds double, double* %254, i64 %255
  store double* %256, double** %11, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load double*, double** %12, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds double, double* %260, i64 %261
  store double* %262, double** %12, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load double*, double** %13, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds double, double* %266, i64 %267
  store double* %268, double** %13, align 8
  br label %269

269:                                              ; preds = %250
  %270 = load i32, i32* %21, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %21, align 4
  br label %33

272:                                              ; preds = %33
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @FFMAX(double, double) #2

declare dso_local double @output_gain(double, i32, i32, i32, i32, i32, i32, i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
