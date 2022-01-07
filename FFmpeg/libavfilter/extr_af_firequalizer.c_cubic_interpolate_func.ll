; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_cubic_interpolate_func.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_cubic_interpolate_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double, double }

@gain_entry_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @cubic_interpolate_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @cubic_interpolate_func(i8* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store double %1, double* %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %267

31:                                               ; preds = %2
  %32 = load double, double* %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fcmp ole double %32, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  store double %46, double* %3, align 8
  br label %267

47:                                               ; preds = %31
  %48 = load double, double* %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = fcmp oge double %48, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %47
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  store double %72, double* %3, align 8
  br label %267

73:                                               ; preds = %47
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @gain_entry_compare, align 4
  %81 = call %struct.TYPE_7__* @bsearch(double* %5, %struct.TYPE_7__** %75, i32 %79, i32 16, i32 %80)
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %8, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = call i32 @av_assert0(%struct.TYPE_7__* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = fsub double %87, %91
  store double %92, double* %20, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = icmp ne %struct.TYPE_7__* %93, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %73
  %99 = load double, double* %20, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 -1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = fsub double %103, %107
  %109 = fmul double %99, %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 -1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fsub double %113, %117
  %119 = fdiv double %109, %118
  br label %121

120:                                              ; preds = %73
  br label %121

121:                                              ; preds = %120, %98
  %122 = phi double [ %119, %98 ], [ 0.000000e+00, %120 ]
  store double %122, double* %16, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load double, double* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load double, double* %129, align 8
  %131 = fsub double %126, %130
  store double %131, double* %17, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 -2
  %142 = icmp ne %struct.TYPE_7__* %132, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %121
  %144 = load double, double* %20, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = fsub double %148, %152
  %154 = fmul double %144, %153
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load double, double* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load double, double* %161, align 8
  %163 = fsub double %158, %162
  %164 = fdiv double %154, %163
  br label %166

165:                                              ; preds = %121
  br label %166

166:                                              ; preds = %165, %143
  %167 = phi double [ %164, %143 ], [ 0.000000e+00, %165 ]
  store double %167, double* %18, align 8
  %168 = load double, double* %16, align 8
  %169 = call double @llvm.fabs.f64(double %168)
  %170 = load double, double* %17, align 8
  %171 = call double @llvm.fabs.f64(double %170)
  %172 = fadd double %169, %171
  store double %172, double* %19, align 8
  %173 = load double, double* %19, align 8
  %174 = fcmp ogt double %173, 0.000000e+00
  br i1 %174, label %175, label %187

175:                                              ; preds = %166
  %176 = load double, double* %16, align 8
  %177 = call double @llvm.fabs.f64(double %176)
  %178 = load double, double* %17, align 8
  %179 = fmul double %177, %178
  %180 = load double, double* %17, align 8
  %181 = call double @llvm.fabs.f64(double %180)
  %182 = load double, double* %16, align 8
  %183 = fmul double %181, %182
  %184 = fadd double %179, %183
  %185 = load double, double* %19, align 8
  %186 = fdiv double %184, %185
  br label %188

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187, %175
  %189 = phi double [ %186, %175 ], [ 0.000000e+00, %187 ]
  store double %189, double* %16, align 8
  %190 = load double, double* %17, align 8
  %191 = call double @llvm.fabs.f64(double %190)
  %192 = load double, double* %18, align 8
  %193 = call double @llvm.fabs.f64(double %192)
  %194 = fadd double %191, %193
  store double %194, double* %19, align 8
  %195 = load double, double* %19, align 8
  %196 = fcmp ogt double %195, 0.000000e+00
  br i1 %196, label %197, label %209

197:                                              ; preds = %188
  %198 = load double, double* %17, align 8
  %199 = call double @llvm.fabs.f64(double %198)
  %200 = load double, double* %18, align 8
  %201 = fmul double %199, %200
  %202 = load double, double* %18, align 8
  %203 = call double @llvm.fabs.f64(double %202)
  %204 = load double, double* %17, align 8
  %205 = fmul double %203, %204
  %206 = fadd double %201, %205
  %207 = load double, double* %19, align 8
  %208 = fdiv double %206, %207
  br label %210

209:                                              ; preds = %188
  br label %210

210:                                              ; preds = %209, %197
  %211 = phi double [ %208, %197 ], [ 0.000000e+00, %209 ]
  store double %211, double* %17, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load double, double* %214, align 8
  store double %215, double* %15, align 8
  %216 = load double, double* %16, align 8
  store double %216, double* %14, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load double, double* %219, align 8
  %221 = fmul double 3.000000e+00, %220
  %222 = load double, double* %17, align 8
  %223 = fsub double %221, %222
  %224 = load double, double* %14, align 8
  %225 = fmul double 2.000000e+00, %224
  %226 = fsub double %223, %225
  %227 = load double, double* %15, align 8
  %228 = fmul double 3.000000e+00, %227
  %229 = fsub double %226, %228
  store double %229, double* %13, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 1
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load double, double* %232, align 8
  %234 = load double, double* %13, align 8
  %235 = fsub double %233, %234
  %236 = load double, double* %14, align 8
  %237 = fsub double %235, %236
  %238 = load double, double* %15, align 8
  %239 = fsub double %237, %238
  store double %239, double* %12, align 8
  %240 = load double, double* %5, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load double, double* %243, align 8
  %245 = fsub double %240, %244
  %246 = load double, double* %20, align 8
  %247 = fdiv double %245, %246
  store double %247, double* %9, align 8
  %248 = load double, double* %9, align 8
  %249 = load double, double* %9, align 8
  %250 = fmul double %248, %249
  store double %250, double* %10, align 8
  %251 = load double, double* %10, align 8
  %252 = load double, double* %9, align 8
  %253 = fmul double %251, %252
  store double %253, double* %11, align 8
  %254 = load double, double* %12, align 8
  %255 = load double, double* %11, align 8
  %256 = fmul double %254, %255
  %257 = load double, double* %13, align 8
  %258 = load double, double* %10, align 8
  %259 = fmul double %257, %258
  %260 = fadd double %256, %259
  %261 = load double, double* %14, align 8
  %262 = load double, double* %9, align 8
  %263 = fmul double %261, %262
  %264 = fadd double %260, %263
  %265 = load double, double* %15, align 8
  %266 = fadd double %264, %265
  store double %266, double* %3, align 8
  br label %267

267:                                              ; preds = %210, %61, %40, %30
  %268 = load double, double* %3, align 8
  ret double %268
}

declare dso_local %struct.TYPE_7__* @bsearch(double*, %struct.TYPE_7__**, i32, i32, i32) #1

declare dso_local i32 @av_assert0(%struct.TYPE_7__*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
