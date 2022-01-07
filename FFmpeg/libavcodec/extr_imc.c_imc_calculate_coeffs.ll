; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_calculate_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_imc.c_imc_calculate_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, float*, i32*, float* }

@BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*, i32*, float*, float*)* @imc_calculate_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_calculate_coeffs(%struct.TYPE_3__* %0, float* %1, float* %2, i32* %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %21 = load i32, i32* @BANDS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca float, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @BANDS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca float, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @BANDS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca float, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  store float 0x39B4484C00000000, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %19, align 4
  br label %31

31:                                               ; preds = %113, %6
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @BANDS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %27, i64 %37
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %12, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  store float 0.000000e+00, float* %42, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %35
  %50 = load float*, float** %8, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %8, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %54, %59
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %24, i64 %62
  store float %60, float* %63, align 4
  %64 = load float*, float** %9, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = fmul double 2.000000e+00, %69
  %71 = fptrunc double %70 to float
  %72 = load float*, float** %11, align 8
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  store float %71, float* %75, align 4
  br label %84

76:                                               ; preds = %35
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %24, i64 %78
  store float 0.000000e+00, float* %79, align 4
  %80 = load float*, float** %11, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float -3.000000e+04, float* %83, align 4
  br label %84

84:                                               ; preds = %76, %49
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to float
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %24, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %90, %94
  %96 = fpext float %95 to double
  %97 = fmul double %96, 1.000000e-02
  %98 = fptrunc double %97 to float
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %30, i64 %100
  store float %98, float* %101, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %30, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load float, float* %17, align 4
  %107 = fcmp ole float %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %84
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %30, i64 %110
  store float 0.000000e+00, float* %111, align 4
  br label %112

112:                                              ; preds = %108, %84
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %31

116:                                              ; preds = %31
  store i32 0, i32* %19, align 4
  br label %117

117:                                              ; preds = %166, %116
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* @BANDS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %117
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %148, %121
  %124 = load i32, i32* %20, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %124, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %123
  %134 = load float*, float** %12, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %30, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fadd float %138, %142
  %144 = load float*, float** %12, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  store float %143, float* %147, align 4
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %20, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load i32, i32* %20, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %27, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %30, i64 %158
  %160 = load float, float* %159, align 4
  %161 = fadd float %156, %160
  %162 = load i32, i32* %20, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %27, i64 %164
  store float %161, float* %165, align 4
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %117

169:                                              ; preds = %117
  store i32 1, i32* %19, align 4
  br label %170

170:                                              ; preds = %198, %169
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* @BANDS, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %170
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %27, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load float, float* %18, align 4
  %181 = fadd float %179, %180
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load float*, float** %183, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %184, i64 %187
  %189 = load float, float* %188, align 4
  %190 = fmul float %181, %189
  store float %190, float* %18, align 4
  %191 = load float, float* %18, align 4
  %192 = load float*, float** %12, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fadd float %196, %191
  store float %197, float* %195, align 4
  br label %198

198:                                              ; preds = %174
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %170

201:                                              ; preds = %170
  store i32 0, i32* %19, align 4
  br label %202

202:                                              ; preds = %210, %201
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* @BANDS, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %27, i64 %208
  store float 0.000000e+00, float* %209, align 4
  br label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %19, align 4
  br label %202

213:                                              ; preds = %202
  store i32 0, i32* %19, align 4
  br label %214

214:                                              ; preds = %256, %213
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* @BANDS, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %259

218:                                              ; preds = %214
  %219 = load i32, i32* %19, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %20, align 4
  br label %221

221:                                              ; preds = %242, %218
  %222 = load i32, i32* %20, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %222, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %221
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %30, i64 %233
  %235 = load float, float* %234, align 4
  %236 = load float*, float** %12, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fadd float %240, %235
  store float %241, float* %239, align 4
  br label %242

242:                                              ; preds = %231
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %20, align 4
  br label %221

245:                                              ; preds = %221
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %30, i64 %247
  %249 = load float, float* %248, align 4
  %250 = load i32, i32* %20, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %27, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fadd float %254, %249
  store float %255, float* %253, align 4
  br label %256

256:                                              ; preds = %245
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %19, align 4
  br label %214

259:                                              ; preds = %214
  store float 0.000000e+00, float* %18, align 4
  %260 = load i32, i32* @BANDS, align 4
  %261 = sub nsw i32 %260, 2
  store i32 %261, i32* %19, align 4
  br label %262

262:                                              ; preds = %288, %259
  %263 = load i32, i32* %19, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %262
  %266 = load i32, i32* %19, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %27, i64 %268
  %270 = load float, float* %269, align 4
  %271 = load float, float* %18, align 4
  %272 = fadd float %270, %271
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  %275 = load float*, float** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fmul float %272, %279
  store float %280, float* %18, align 4
  %281 = load float, float* %18, align 4
  %282 = load float*, float** %12, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %282, i64 %284
  %286 = load float, float* %285, align 4
  %287 = fadd float %286, %281
  store float %287, float* %285, align 4
  br label %288

288:                                              ; preds = %265
  %289 = load i32, i32* %19, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %19, align 4
  br label %262

291:                                              ; preds = %262
  %292 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %292)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
