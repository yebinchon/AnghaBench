; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_noise_normalize.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_noise_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, float, i64 }

@apsort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_4__*, i32, float*, float*, float*, i32*, float, i32, i32, i32*)* @noise_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @noise_normalize(%struct.TYPE_4__* %0, i32 %1, float* %2, float* %3, float* %4, i32* %5, float %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca float**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32 %1, i32* %12, align 4
  store float* %2, float** %13, align 8
  store float* %3, float** %14, align 8
  store float* %4, float** %15, align 8
  store i32* %5, i32** %16, align 8
  store float %6, float* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %21, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call float** @alloca(i32 %35)
  store float** %36, float*** %22, align 8
  store i32 0, i32* %24, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %10
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sub nsw i32 %44, %45
  br label %49

47:                                               ; preds = %10
  %48 = load i32, i32* %19, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i32 [ %46, %41 ], [ %48, %47 ]
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %25, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %25, align 4
  br label %56

56:                                               ; preds = %54, %49
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %23, align 4
  br label %57

57:                                               ; preds = %108, %56
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %57
  %62 = load i32*, i32** %16, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %23, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %64, %61
  %72 = load float*, float** %14, align 8
  %73 = load i32, i32* %23, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %15, align 8
  %78 = load i32, i32* %23, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fdiv float %76, %81
  store float %82, float* %26, align 4
  %83 = load float*, float** %13, align 8
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fcmp olt float %87, 0.000000e+00
  br i1 %88, label %89, label %98

89:                                               ; preds = %71
  %90 = load float, float* %26, align 4
  %91 = call i32 @sqrt(float %90)
  %92 = call i32 @rint(i32 %91)
  %93 = sub nsw i32 0, %92
  %94 = load i32*, i32** %20, align 8
  %95 = load i32, i32* %23, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %106

98:                                               ; preds = %71
  %99 = load float, float* %26, align 4
  %100 = call i32 @sqrt(float %99)
  %101 = call i32 @rint(i32 %100)
  %102 = load i32*, i32** %20, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %89
  br label %107

107:                                              ; preds = %106, %64
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %23, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %23, align 4
  br label %57

111:                                              ; preds = %57
  br label %112

112:                                              ; preds = %211, %111
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %214

116:                                              ; preds = %112
  %117 = load i32*, i32** %16, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %210, label %126

126:                                              ; preds = %119, %116
  %127 = load float*, float** %14, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  %132 = load float*, float** %15, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fdiv float %131, %136
  store float %137, float* %27, align 4
  %138 = load float, float* %27, align 4
  %139 = fcmp olt float %138, 2.500000e-01
  br i1 %139, label %140, label %162

140:                                              ; preds = %126
  %141 = load i32*, i32** %16, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %143, %140
  %150 = load float, float* %27, align 4
  %151 = load float, float* %17, align 4
  %152 = fadd float %151, %150
  store float %152, float* %17, align 4
  %153 = load float*, float** %14, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float**, float*** %22, align 8
  %158 = load i32, i32* %24, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %24, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds float*, float** %157, i64 %160
  store float* %156, float** %161, align 8
  br label %209

162:                                              ; preds = %143, %126
  %163 = load float*, float** %13, align 8
  %164 = load i32, i32* %23, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = fcmp olt float %167, 0.000000e+00
  br i1 %168, label %169, label %178

169:                                              ; preds = %162
  %170 = load float, float* %27, align 4
  %171 = call i32 @sqrt(float %170)
  %172 = call i32 @rint(i32 %171)
  %173 = sub nsw i32 0, %172
  %174 = load i32*, i32** %20, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %186

178:                                              ; preds = %162
  %179 = load float, float* %27, align 4
  %180 = call i32 @sqrt(float %179)
  %181 = call i32 @rint(i32 %180)
  %182 = load i32*, i32** %20, align 8
  %183 = load i32, i32* %23, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %178, %169
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* %23, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %191, %196
  %198 = sitofp i32 %197 to float
  %199 = load float*, float** %15, align 8
  %200 = load i32, i32* %23, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fmul float %198, %203
  %205 = load float*, float** %14, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %204, float* %208, align 4
  br label %209

209:                                              ; preds = %186, %149
  br label %210

210:                                              ; preds = %209, %119
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %23, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %23, align 4
  br label %112

214:                                              ; preds = %112
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %279

217:                                              ; preds = %214
  %218 = load float**, float*** %22, align 8
  %219 = load i32, i32* %24, align 4
  %220 = load i32, i32* @apsort, align 4
  %221 = call i32 @qsort(float** %218, i32 %219, i32 8, i32 %220)
  store i32 0, i32* %23, align 4
  br label %222

222:                                              ; preds = %275, %217
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %278

226:                                              ; preds = %222
  %227 = load float**, float*** %22, align 8
  %228 = load i32, i32* %23, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float*, float** %227, i64 %229
  %231 = load float*, float** %230, align 8
  %232 = load float*, float** %14, align 8
  %233 = ptrtoint float* %231 to i64
  %234 = ptrtoint float* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 4
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %28, align 4
  %238 = load float, float* %17, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load float, float* %240, align 4
  %242 = fcmp oge float %238, %241
  br i1 %242, label %243, label %265

243:                                              ; preds = %226
  %244 = load float*, float** %13, align 8
  %245 = load i32, i32* %28, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = call i32 @unitnorm(float %248)
  %250 = load i32*, i32** %20, align 8
  %251 = load i32, i32* %28, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %249, i32* %253, align 4
  %254 = load float, float* %17, align 4
  %255 = fsub float %254, 1.000000e+00
  store float %255, float* %17, align 4
  %256 = load float*, float** %15, align 8
  %257 = load i32, i32* %28, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %256, i64 %258
  %260 = load float, float* %259, align 4
  %261 = load float*, float** %14, align 8
  %262 = load i32, i32* %28, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %261, i64 %263
  store float %260, float* %264, align 4
  br label %274

265:                                              ; preds = %226
  %266 = load i32*, i32** %20, align 8
  %267 = load i32, i32* %28, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 0, i32* %269, align 4
  %270 = load float*, float** %14, align 8
  %271 = load i32, i32* %28, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  store float 0.000000e+00, float* %273, align 4
  br label %274

274:                                              ; preds = %265, %243
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %23, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %23, align 4
  br label %222

278:                                              ; preds = %222
  br label %279

279:                                              ; preds = %278, %214
  %280 = load float, float* %17, align 4
  ret float %280
}

declare dso_local float** @alloca(i32) #1

declare dso_local i32 @rint(i32) #1

declare dso_local i32 @sqrt(float) #1

declare dso_local i32 @qsort(float**, i32, i32, i32) #1

declare dso_local i32 @unitnorm(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
