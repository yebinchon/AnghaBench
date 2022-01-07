; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_vorbis_lpc_to_lsp.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lsp.c_vorbis_lpc_to_lsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_lpc_to_lsp(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call float* @alloca(i32 %23)
  store float* %24, float** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call float* @alloca(i32 %29)
  store float* %30, float** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call float* @alloca(i32 %35)
  store float* %36, float** %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call float* @alloca(i32 %41)
  store float* %42, float** %14, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load float*, float** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  store float 1.000000e+00, float* %51, align 4
  store i32 1, i32* %15, align 4
  br label %52

52:                                               ; preds = %77, %3
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load float*, float** %5, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %57, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %63, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fadd float %62, %69
  %71 = load float*, float** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %71, i64 %75
  store float %70, float* %76, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load float*, float** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float 1.000000e+00, float* %84, align 4
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %110, %80
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load float*, float** %5, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %90, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %96, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fsub float %95, %102
  %104 = load float*, float** %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %104, i64 %108
  store float %103, float* %109, align 4
  br label %110

110:                                              ; preds = %89
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %113
  store i32 2, i32* %15, align 4
  br label %118

118:                                              ; preds = %139, %117
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load float*, float** %12, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %124, %125
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %123, i64 %128
  %130 = load float, float* %129, align 4
  %131 = load float*, float** %12, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %131, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fadd float %137, %130
  store float %138, float* %136, align 4
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %118

142:                                              ; preds = %118
  br label %194

143:                                              ; preds = %113
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %165, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load float*, float** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %150, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %149, i64 %154
  %156 = load float, float* %155, align 4
  %157 = load float*, float** %11, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %157, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fsub float %163, %156
  store float %164, float* %162, align 4
  br label %165

165:                                              ; preds = %148
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %144

168:                                              ; preds = %144
  store i32 1, i32* %15, align 4
  br label %169

169:                                              ; preds = %190, %168
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %193

173:                                              ; preds = %169
  %174 = load float*, float** %12, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %174, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float*, float** %12, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %15, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %182, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fadd float %188, %181
  store float %189, float* %187, align 4
  br label %190

190:                                              ; preds = %173
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %169

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %193, %142
  %195 = load float*, float** %11, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @cheby(float* %195, i32 %196)
  %198 = load float*, float** %12, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @cheby(float* %198, i32 %199)
  %201 = load float*, float** %11, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load float*, float** %13, align 8
  %204 = call i64 @Laguerre_With_Deflation(float* %201, i32 %202, float* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %194
  %207 = load float*, float** %12, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load float*, float** %14, align 8
  %210 = call i64 @Laguerre_With_Deflation(float* %207, i32 %208, float* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206, %194
  store i32 -1, i32* %4, align 4
  br label %271

213:                                              ; preds = %206
  %214 = load float*, float** %11, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load float*, float** %13, align 8
  %217 = call i32 @Newton_Raphson(float* %214, i32 %215, float* %216)
  %218 = load float*, float** %12, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load float*, float** %14, align 8
  %221 = call i32 @Newton_Raphson(float* %218, i32 %219, float* %220)
  %222 = load float*, float** %13, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @comp, align 4
  %225 = call i32 @qsort(float* %222, i32 %223, i32 4, i32 %224)
  %226 = load float*, float** %14, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @comp, align 4
  %229 = call i32 @qsort(float* %226, i32 %227, i32 4, i32 %228)
  store i32 0, i32* %15, align 4
  br label %230

230:                                              ; preds = %246, %213
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load float*, float** %13, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  %239 = load float, float* %238, align 4
  %240 = call float @acos(float %239)
  %241 = load float*, float** %6, align 8
  %242 = load i32, i32* %15, align 4
  %243 = mul nsw i32 %242, 2
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %241, i64 %244
  store float %240, float* %245, align 4
  br label %246

246:                                              ; preds = %234
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %230

249:                                              ; preds = %230
  store i32 0, i32* %15, align 4
  br label %250

250:                                              ; preds = %267, %249
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %250
  %255 = load float*, float** %14, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float, float* %258, align 4
  %260 = call float @acos(float %259)
  %261 = load float*, float** %6, align 8
  %262 = load i32, i32* %15, align 4
  %263 = mul nsw i32 %262, 2
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, float* %261, i64 %265
  store float %260, float* %266, align 4
  br label %267

267:                                              ; preds = %254
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %250

270:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %271

271:                                              ; preds = %270, %212
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local float* @alloca(i32) #1

declare dso_local i32 @cheby(float*, i32) #1

declare dso_local i64 @Laguerre_With_Deflation(float*, i32, float*) #1

declare dso_local i32 @Newton_Raphson(float*, i32, float*) #1

declare dso_local i32 @qsort(float*, i32, i32, i32) #1

declare dso_local float @acos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
