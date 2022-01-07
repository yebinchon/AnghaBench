; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, float*, i32*, i64, i8**, i64* }
%struct.TYPE_5__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ccv_ferns_new(i32 %0, i32 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22, %4
  %29 = phi i1 [ false, %22 ], [ false, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 2
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 56, %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %46, %48
  %50 = mul i64 %49, 2
  %51 = add i64 %43, %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  %58 = mul i64 %57, 2
  %59 = add i64 %51, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @ccmalloc(i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %10, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 8
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 8
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 1
  %85 = bitcast %struct.TYPE_6__* %84 to i32*
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  %91 = mul nsw i32 %90, 2
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = getelementptr inbounds i32, i32* %85, i64 %94
  %96 = bitcast i32* %95 to float*
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store float* %96, float** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %102, %103
  %105 = mul nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %101, i64 %106
  %108 = bitcast float* %107 to i32*
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %116, %118
  %120 = mul i64 %119, 2
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memset(i32* %113, i32 0, i32 %121)
  %123 = call float @logf(double 5.000000e-01)
  store float %123, float* %14, align 4
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %139, %28
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %126, %127
  %129 = mul nsw i32 %128, 2
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load float, float* %14, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  store float %132, float* %138, align 4
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %124

142:                                              ; preds = %124
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = ptrtoint %struct.TYPE_6__* %143 to i32
  %145 = call i32 @dsfmt_init_gen_rand(i32* %15, i32 %144)
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %270, %142
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %273

150:                                              ; preds = %146
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %266, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %269

155:                                              ; preds = %151
  %156 = call i32 @dsfmt_genrand_uint32(i32* %15)
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %164, %159
  %161 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %161, double* %16, align 8
  %162 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %162, double* %18, align 8
  %163 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %163, double* %19, align 8
  store double %163, double* %17, align 8
  br label %164

164:                                              ; preds = %160
  %165 = load double, double* %16, align 8
  %166 = load double, double* %18, align 8
  %167 = fsub double %165, %166
  %168 = call double @llvm.fabs.f64(double %167)
  %169 = fcmp oge double %168, 2.000000e-01
  br i1 %169, label %160, label %170

170:                                              ; preds = %164
  br label %183

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %176, %171
  %173 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %173, double* %18, align 8
  store double %173, double* %16, align 8
  %174 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %174, double* %17, align 8
  %175 = call double @dsfmt_genrand_close_open(i32* %15)
  store double %175, double* %19, align 8
  br label %176

176:                                              ; preds = %172
  %177 = load double, double* %17, align 8
  %178 = load double, double* %19, align 8
  %179 = fsub double %177, %178
  %180 = call double @llvm.fabs.f64(double %179)
  %181 = fcmp oge double %180, 2.000000e-01
  br i1 %181, label %172, label %182

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %170
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %262, %183
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %265

188:                                              ; preds = %184
  %189 = load double, double* %16, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load double, double* %194, align 8
  %196 = fmul double %189, %195
  %197 = fptosi double %196 to i32
  %198 = load double, double* %17, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load double, double* %203, align 8
  %205 = fmul double %198, %204
  %206 = fptosi double %205 to i32
  %207 = call i8* @ccv_point(i32 %197, i32 %206)
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 7
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %5, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* %6, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %6, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %215, %218
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %219, %220
  %222 = mul nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %210, i64 %223
  store i8* %207, i8** %224, align 8
  %225 = load double, double* %18, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = fmul double %225, %231
  %233 = fptosi double %232 to i32
  %234 = load double, double* %19, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load double, double* %239, align 8
  %241 = fmul double %234, %240
  %242 = fptosi double %241 to i32
  %243 = call i8* @ccv_point(i32 %233, i32 %242)
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 7
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %5, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load i32, i32* %6, align 4
  %251 = mul nsw i32 %249, %250
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %6, align 4
  %254 = mul nsw i32 %252, %253
  %255 = add nsw i32 %251, %254
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %255, %256
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %246, i64 %260
  store i8* %243, i8** %261, align 8
  br label %262

262:                                              ; preds = %188
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %184

265:                                              ; preds = %184
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %151

269:                                              ; preds = %151
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %146

273:                                              ; preds = %146
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 6
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  ret %struct.TYPE_6__* %276
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local float @logf(double) #1

declare dso_local i32 @dsfmt_init_gen_rand(i32*, i32) #1

declare dso_local i32 @dsfmt_genrand_uint32(i32*) #1

declare dso_local double @dsfmt_genrand_close_open(i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i8* @ccv_point(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
