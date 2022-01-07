; ModuleID = '/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_noise2.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_noise2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F2 = common dso_local global float 0.000000e+00, align 4
@G2 = common dso_local global float 0.000000e+00, align 4
@PERM = common dso_local global i32* null, align 8
@GRAD3 = common dso_local global float** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @noise2(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x i32], align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %19 = load float, float* %3, align 4
  %20 = load float, float* %4, align 4
  %21 = fadd float %19, %20
  %22 = load float, float* @F2, align 4
  %23 = fmul float %21, %22
  store float %23, float* %10, align 4
  %24 = load float, float* %3, align 4
  %25 = load float, float* %10, align 4
  %26 = fadd float %24, %25
  %27 = call float @llvm.floor.f32(float %26)
  store float %27, float* %11, align 4
  %28 = load float, float* %4, align 4
  %29 = load float, float* %10, align 4
  %30 = fadd float %28, %29
  %31 = call float @llvm.floor.f32(float %30)
  store float %31, float* %12, align 4
  %32 = load float, float* %11, align 4
  %33 = load float, float* %12, align 4
  %34 = fadd float %32, %33
  %35 = load float, float* @G2, align 4
  %36 = fmul float %34, %35
  store float %36, float* %13, align 4
  %37 = bitcast [3 x float]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 12, i1 false)
  %38 = load float, float* %3, align 4
  %39 = load float, float* %11, align 4
  %40 = load float, float* %13, align 4
  %41 = fsub float %39, %40
  %42 = fsub float %38, %41
  %43 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  store float %42, float* %43, align 4
  %44 = load float, float* %4, align 4
  %45 = load float, float* %12, align 4
  %46 = load float, float* %13, align 4
  %47 = fsub float %45, %46
  %48 = fsub float %44, %47
  %49 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  store float %48, float* %49, align 4
  %50 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %51 = load float, float* %50, align 4
  %52 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %53 = load float, float* %52, align 4
  %54 = fcmp ogt float %51, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %57 = load float, float* %56, align 4
  %58 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %59 = load float, float* %58, align 4
  %60 = fcmp ole float %57, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %63 = load float, float* %62, align 4
  %64 = load float, float* @G2, align 4
  %65 = fmul float %64, 2.000000e+00
  %66 = fadd float %63, %65
  %67 = fsub float %66, 1.000000e+00
  %68 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 2
  store float %67, float* %68, align 4
  %69 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %70 = load float, float* %69, align 4
  %71 = load float, float* @G2, align 4
  %72 = fmul float %71, 2.000000e+00
  %73 = fadd float %70, %72
  %74 = fsub float %73, 1.000000e+00
  %75 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 2
  store float %74, float* %75, align 4
  %76 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %77 = load float, float* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sitofp i32 %78 to float
  %80 = fsub float %77, %79
  %81 = load float, float* @G2, align 4
  %82 = fadd float %80, %81
  %83 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 1
  store float %82, float* %83, align 4
  %84 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 0
  %85 = load float, float* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sitofp i32 %86 to float
  %88 = fsub float %85, %87
  %89 = load float, float* @G2, align 4
  %90 = fadd float %88, %89
  %91 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 1
  store float %90, float* %91, align 4
  %92 = load float, float* %11, align 4
  %93 = fptosi float %92 to i32
  %94 = and i32 %93, 255
  store i32 %94, i32* %7, align 4
  %95 = load float, float* %12, align 4
  %96 = fptosi float %95 to i32
  %97 = and i32 %96, 255
  store i32 %97, i32* %8, align 4
  %98 = load i32*, i32** @PERM, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** @PERM, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %99, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = srem i32 %108, 12
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** @PERM, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32*, i32** @PERM, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %114, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %111, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %125, 12
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** @PERM, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32*, i32** @PERM, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %130, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %128, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = srem i32 %140, 12
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 %141, i32* %142, align 4
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %170, %2
  %144 = load i32, i32* %9, align 4
  %145 = icmp sle i32 %144, 2
  br i1 %145, label %146, label %173

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fmul float %150, %154
  %156 = fsub float 5.000000e-01, %155
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 %158
  %160 = load float, float* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fmul float %160, %164
  %166 = fsub float %156, %165
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %168
  store float %166, float* %169, align 4
  br label %170

170:                                              ; preds = %146
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %143

173:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %239, %173
  %175 = load i32, i32* %9, align 4
  %176 = icmp sle i32 %175, 2
  br i1 %176, label %177, label %242

177:                                              ; preds = %174
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fcmp ogt float %181, 0.000000e+00
  br i1 %182, label %183, label %238

183:                                              ; preds = %177
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fmul float %187, %191
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fmul float %192, %196
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 0, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fmul float %197, %201
  %203 = load float**, float*** @GRAD3, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float*, float** %203, i64 %208
  %210 = load float*, float** %209, align 8
  %211 = getelementptr inbounds float, float* %210, i64 0
  %212 = load float, float* %211, align 4
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fmul float %212, %216
  %218 = load float**, float*** @GRAD3, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float*, float** %218, i64 %223
  %225 = load float*, float** %224, align 8
  %226 = getelementptr inbounds float, float* %225, i64 1
  %227 = load float, float* %226, align 4
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fmul float %227, %231
  %233 = fadd float %217, %232
  %234 = fmul float %202, %233
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 %236
  store float %234, float* %237, align 4
  br label %238

238:                                              ; preds = %183, %177
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %174

242:                                              ; preds = %174
  %243 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %244 = load float, float* %243, align 4
  %245 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  %246 = load float, float* %245, align 4
  %247 = fadd float %244, %246
  %248 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  %249 = load float, float* %248, align 4
  %250 = fadd float %247, %249
  %251 = fmul float %250, 7.000000e+01
  ret float %251
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
