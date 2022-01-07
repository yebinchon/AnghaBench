; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_evalfunc_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_evalfunc_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float**, i32, i32, i32, i32, i32, i32, i32, i32, i32 (float*, i32, float*)*, i32 (float*, i32)*, i32 (%struct.TYPE_6__*, float*, float*, float*, i32, i32, float*)*, i32 (i32*, i32, i32, i32, float*, float*)* }
%struct.TYPE_7__ = type { float*, float*, i32*, i32*, i32*, i32*, i32*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @evalfunc_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalfunc_1(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca [4 x float], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  store float* %34, float** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load float**, float*** %36, align 8
  store float** %37, float*** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sdiv i32 %50, 2
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sitofp i32 %56 to float
  %58 = fdiv float 1.000000e+00, %57
  store float %58, float* %14, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %265, %2
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %268

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %19, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %20, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %21, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %22, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 7
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %23, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = udiv i64 %113, 4
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %24, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %22, align 4
  %124 = sub nsw i32 %123, 12
  store i32 %124, i32* %26, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = shl i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %65
  br label %265

133:                                              ; preds = %65
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %134, 6
  %136 = load i32, i32* %20, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32*, i32** %19, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %19, align 8
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* %24, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sub nsw i32 %143, 32
  %145 = load i32*, i32** %23, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %23, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32, i32* %20, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 0, %157
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32* %159, i32** %27, align 8
  %160 = load i32, i32* %25, align 4
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %261, %133
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %26, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %264

165:                                              ; preds = %161
  store i32 32, i32* %17, align 4
  br label %166

166:                                              ; preds = %247, %165
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %21, align 4
  %169 = sub nsw i32 %168, 32
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %250

171:                                              ; preds = %166
  %172 = load i32*, i32** %23, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 255
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %247

179:                                              ; preds = %171
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 12
  %182 = load i32 (i32*, i32, i32, i32, float*, float*)*, i32 (i32*, i32, i32, i32, float*, float*)** %181, align 8
  %183 = load i32*, i32** %27, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %13, align 4
  %190 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 0
  %191 = load float*, float** %5, align 8
  %192 = call i32 %182(i32* %186, i32 %187, i32 %188, i32 %189, float* %190, float* %191)
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %228, %179
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %231

197:                                              ; preds = %193
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 11
  %200 = load i32 (%struct.TYPE_6__*, float*, float*, float*, i32, i32, float*)*, i32 (%struct.TYPE_6__*, float*, float*, float*, i32, i32, float*)** %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = load float*, float** %5, align 8
  %203 = load float**, float*** %7, align 8
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float*, float** %203, i64 %205
  %207 = load float*, float** %206, align 8
  %208 = load float*, float** %6, align 8
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %209, 2
  %211 = load i32, i32* %9, align 4
  %212 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 0
  %213 = getelementptr inbounds float, float* %212, i64 2
  %214 = call i32 %200(%struct.TYPE_6__* %201, float* %202, float* %207, float* %208, i32 %210, i32 %211, float* %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 10
  %217 = load i32 (float*, i32)*, i32 (float*, i32)** %216, align 8
  %218 = load float*, float** %6, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 %217(float* %218, i32 %219)
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 9
  %223 = load i32 (float*, i32, float*)*, i32 (float*, i32, float*)** %222, align 8
  %224 = load float*, float** %6, align 8
  %225 = load i32, i32* %10, align 4
  %226 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 0
  %227 = call i32 %223(float* %224, i32 %225, float* %226)
  br label %228

228:                                              ; preds = %197
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %193

231:                                              ; preds = %193
  %232 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 3
  %233 = load float, float* %232, align 4
  %234 = load float, float* %14, align 4
  %235 = fmul float %233, %234
  %236 = fadd float %235, 5.000000e-01
  %237 = fptosi float %236 to i32
  %238 = call i32 @FFMAX(i32 %237, i32 0)
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @FFMIN(i32 %238, i32 %241)
  %243 = load i32*, i32** %23, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  br label %247

247:                                              ; preds = %231, %178
  %248 = load i32, i32* %17, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %17, align 4
  br label %166

250:                                              ; preds = %166
  %251 = load i32, i32* %20, align 4
  %252 = mul nsw i32 %251, 2
  %253 = load i32*, i32** %27, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %27, align 8
  %256 = load i32, i32* %24, align 4
  %257 = mul nsw i32 %256, 2
  %258 = load i32*, i32** %23, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %23, align 8
  br label %261

261:                                              ; preds = %250
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 %262, 2
  store i32 %263, i32* %16, align 4
  br label %161

264:                                              ; preds = %161
  br label %265

265:                                              ; preds = %264, %132
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %59

268:                                              ; preds = %59
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
