; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramUniform.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_tHistogramUniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { double, double, double, i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_8__ = type { double, double }
%struct.TYPE_13__ = type { double, double }

@.str = private unnamed_addr constant [27 x i8] c"i/numofSlot: %f, v:%f, %f\0A\00", align 1
@FLT_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double* @tHistogramUniform(%struct.TYPE_12__* %0, double* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call double* @malloc(i32 %22)
  store double* %23, double** %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %265, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %268

28:                                               ; preds = %24
  %29 = load double*, double** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fmul double %33, %36
  store double %37, double* %9, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %11, align 8
  %50 = load double, double* %9, align 8
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %72

52:                                               ; preds = %28
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  %60 = load double*, double** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load double, double* %9, align 8
  %66 = load double*, double** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), double %64, double %65, double %70)
  br label %265

72:                                               ; preds = %28
  %73 = load double, double* %9, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = fcmp ole double %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = load double*, double** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %81, double* %85, align 8
  %86 = load double*, double** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = load double, double* %9, align 8
  %92 = load double*, double** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  %96 = load double, double* %95, align 8
  %97 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), double %90, double %91, double %96)
  br label %265

98:                                               ; preds = %72
  %99 = load double, double* %9, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fcmp oeq double %99, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load double, double* %106, align 8
  %108 = load double*, double** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  store double %107, double* %111, align 8
  %112 = load double*, double** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  %116 = load double, double* %115, align 8
  %117 = load double, double* %9, align 8
  %118 = load double*, double** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %118, i64 %120
  %122 = load double, double* %121, align 8
  %123 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), double %116, double %117, double %122)
  br label %265

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %127, %struct.TYPE_13__** %14, align 8
  br label %128

128:                                              ; preds = %147, %126
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %128
  %135 = load double, double* %13, align 8
  %136 = load double, double* %9, align 8
  %137 = fcmp ole double %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load double, double* %13, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = fadd double %139, %142
  %144 = load double, double* %9, align 8
  %145 = fcmp ogt double %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %165

147:                                              ; preds = %138, %134
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load double, double* %149, align 8
  %151 = load double, double* %13, align 8
  %152 = fadd double %151, %150
  store double %152, double* %13, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %14, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %156, i64 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %10, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %11, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %128

165:                                              ; preds = %146, %128
  %166 = load double, double* %13, align 8
  %167 = load double, double* %9, align 8
  %168 = fcmp ole double %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load double, double* %13, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = fadd double %170, %173
  %175 = load double, double* %9, align 8
  %176 = fcmp ogt double %174, %175
  br label %177

177:                                              ; preds = %169, %165
  %178 = phi i1 [ false, %165 ], [ %176, %169 ]
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load double, double* %9, align 8
  %182 = load double, double* %13, align 8
  %183 = fsub double %181, %182
  store double %183, double* %15, align 8
  %184 = load double, double* %15, align 8
  %185 = call i64 @fabs(double %184)
  %186 = load i64, i64* @FLT_EPSILON, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %177
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load double, double* %190, align 8
  %192 = load double*, double** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %192, i64 %194
  store double %191, double* %195, align 8
  br label %196

196:                                              ; preds = %188, %177
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load double, double* %198, align 8
  store double %199, double* %16, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = load double, double* %16, align 8
  %204 = fsub double %202, %203
  store double %204, double* %17, align 8
  %205 = load double, double* %17, align 8
  %206 = fcmp oeq double %205, 0.000000e+00
  br i1 %206, label %207, label %227

207:                                              ; preds = %196
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load double, double* %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load double, double* %212, align 8
  %214 = fsub double %210, %213
  %215 = load double, double* %15, align 8
  %216 = fmul double %214, %215
  %217 = load double, double* %16, align 8
  %218 = fdiv double %216, %217
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load double, double* %220, align 8
  %222 = fadd double %218, %221
  %223 = load double*, double** %7, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  store double %222, double* %226, align 8
  br label %264

227:                                              ; preds = %196
  %228 = load double, double* %16, align 8
  %229 = fmul double -2.000000e+00, %228
  %230 = load double, double* %16, align 8
  %231 = fmul double 4.000000e+00, %230
  %232 = load double, double* %16, align 8
  %233 = fmul double %231, %232
  %234 = load double, double* %17, align 8
  %235 = fmul double 4.000000e+00, %234
  %236 = load double, double* %15, align 8
  %237 = fmul double -2.000000e+00, %236
  %238 = fmul double %235, %237
  %239 = fsub double %233, %238
  %240 = fptosi double %239 to i32
  %241 = call i32 @sqrt(i32 %240)
  %242 = sitofp i32 %241 to double
  %243 = fadd double %229, %242
  %244 = load double, double* %17, align 8
  %245 = fmul double 2.000000e+00, %244
  %246 = fdiv double %243, %245
  store double %246, double* %18, align 8
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = load double, double* %248, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load double, double* %251, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load double, double* %254, align 8
  %256 = fsub double %252, %255
  %257 = load double, double* %18, align 8
  %258 = fmul double %256, %257
  %259 = fadd double %249, %258
  %260 = load double*, double** %7, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  store double %259, double* %263, align 8
  br label %264

264:                                              ; preds = %227, %207
  br label %265

265:                                              ; preds = %264, %104, %78, %52
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %24

268:                                              ; preds = %24
  %269 = load double*, double** %7, align 8
  ret double* %269
}

declare dso_local double* @malloc(i32) #1

declare dso_local i32 @printf(i8*, double, double, double) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
