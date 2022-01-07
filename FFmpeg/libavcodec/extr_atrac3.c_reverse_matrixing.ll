; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_reverse_matrixing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_reverse_matrixing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_coeffs = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32*, i32*)* @reverse_matrixing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_matrixing(float* %0, float* %1, i32* %2, i32* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %242, %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 1024
  br i1 %28, label %29, label %247

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %29
  %45 = load float*, float** @matrix_coeffs, align 8
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %45, i64 %48
  %50 = load float, float* %49, align 4
  store float %50, float* %12, align 4
  %51 = load float*, float** @matrix_coeffs, align 8
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %51, i64 %55
  %57 = load float, float* %56, align 4
  store float %57, float* %13, align 4
  %58 = load float*, float** @matrix_coeffs, align 8
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  %63 = load float, float* %62, align 4
  store float %63, float* %14, align 4
  %64 = load float*, float** @matrix_coeffs, align 8
  %65 = load i32, i32* %17, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %64, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %15, align 4
  br label %71

71:                                               ; preds = %120, %44
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 8
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  %77 = load float*, float** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  store float %81, float* %18, align 4
  %82 = load float*, float** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  store float %86, float* %19, align 4
  %87 = load float, float* %18, align 4
  %88 = load float, float* %12, align 4
  %89 = load float, float* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call float @INTERPOLATE(float %88, float %89, i32 %92)
  %94 = fmul float %87, %93
  %95 = load float, float* %19, align 4
  %96 = load float, float* %13, align 4
  %97 = load float, float* %15, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call float @INTERPOLATE(float %96, float %97, i32 %100)
  %102 = fmul float %95, %101
  %103 = fadd float %94, %102
  store float %103, float* %19, align 4
  %104 = load float, float* %19, align 4
  %105 = load float*, float** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  store float %104, float* %108, align 4
  %109 = load float, float* %18, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %110, 2.000000e+00
  %112 = load float, float* %19, align 4
  %113 = fpext float %112 to double
  %114 = fsub double %111, %113
  %115 = fptrunc double %114 to float
  %116 = load float*, float** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  store float %115, float* %119, align 4
  br label %120

120:                                              ; preds = %76
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %71

123:                                              ; preds = %71
  br label %124

124:                                              ; preds = %123, %29
  %125 = load i32, i32* %17, align 4
  switch i32 %125, label %239 [
    i32 0, label %126
    i32 1, label %165
    i32 2, label %204
    i32 3, label %204
  ]

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %161, %126
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 256
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %164

132:                                              ; preds = %127
  %133 = load float*, float** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  store float %137, float* %20, align 4
  %138 = load float*, float** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  store float %142, float* %21, align 4
  %143 = load float, float* %21, align 4
  %144 = fpext float %143 to double
  %145 = fmul double %144, 2.000000e+00
  %146 = fptrunc double %145 to float
  %147 = load float*, float** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  store float %146, float* %150, align 4
  %151 = load float, float* %20, align 4
  %152 = load float, float* %21, align 4
  %153 = fsub float %151, %152
  %154 = fpext float %153 to double
  %155 = fmul double %154, 2.000000e+00
  %156 = fptrunc double %155 to float
  %157 = load float*, float** %6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  store float %156, float* %160, align 4
  br label %161

161:                                              ; preds = %132
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %127

164:                                              ; preds = %127
  br label %241

165:                                              ; preds = %124
  br label %166

166:                                              ; preds = %200, %165
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 256
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %203

171:                                              ; preds = %166
  %172 = load float*, float** %5, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  store float %176, float* %22, align 4
  %177 = load float*, float** %6, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  store float %181, float* %23, align 4
  %182 = load float, float* %22, align 4
  %183 = load float, float* %23, align 4
  %184 = fadd float %182, %183
  %185 = fpext float %184 to double
  %186 = fmul double %185, 2.000000e+00
  %187 = fptrunc double %186 to float
  %188 = load float*, float** %5, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  store float %187, float* %191, align 4
  %192 = load float, float* %23, align 4
  %193 = fpext float %192 to double
  %194 = fmul double %193, -2.000000e+00
  %195 = fptrunc double %194 to float
  %196 = load float*, float** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  store float %195, float* %199, align 4
  br label %200

200:                                              ; preds = %171
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %166

203:                                              ; preds = %166
  br label %241

204:                                              ; preds = %124, %124
  br label %205

205:                                              ; preds = %235, %204
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 256
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %238

210:                                              ; preds = %205
  %211 = load float*, float** %5, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  store float %215, float* %24, align 4
  %216 = load float*, float** %6, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load float, float* %219, align 4
  store float %220, float* %25, align 4
  %221 = load float, float* %24, align 4
  %222 = load float, float* %25, align 4
  %223 = fadd float %221, %222
  %224 = load float*, float** %5, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %224, i64 %226
  store float %223, float* %227, align 4
  %228 = load float, float* %24, align 4
  %229 = load float, float* %25, align 4
  %230 = fsub float %228, %229
  %231 = load float*, float** %6, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  store float %230, float* %234, align 4
  br label %235

235:                                              ; preds = %210
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %205

238:                                              ; preds = %205
  br label %241

239:                                              ; preds = %124
  %240 = call i32 @av_assert1(i32 0)
  br label %241

241:                                              ; preds = %239, %238, %203, %164
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 256
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %9, align 4
  br label %26

247:                                              ; preds = %26
  ret void
}

declare dso_local float @INTERPOLATE(float, float, i32) #1

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
