; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lpc.c_vorbis_lpc_from_data.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lpc.c_vorbis_lpc_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @vorbis_lpc_from_data(float* %0, float* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call double* @alloca(i32 %24)
  store double* %25, double** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call double* @alloca(i32 %29)
  store double* %30, double** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %64, %4
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %14, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  store double 0.000000e+00, double* %15, align 8
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %61, %37
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load float*, float** %5, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fpext float %48 to double
  %50 = load float*, float** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %50, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fpext float %56 to double
  %58 = fmul double %49, %57
  %59 = load double, double* %15, align 8
  %60 = fadd double %59, %58
  store double %60, double* %15, align 8
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load double, double* %15, align 8
  %66 = load double*, double** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  store double %65, double* %69, align 8
  br label %33

70:                                               ; preds = %33
  %71 = load double*, double** %9, align 8
  %72 = getelementptr inbounds double, double* %71, i64 0
  %73 = load double, double* %72, align 8
  %74 = fmul double %73, 0x3FF000000006DF38
  store double %74, double* %11, align 8
  %75 = load double*, double** %9, align 8
  %76 = getelementptr inbounds double, double* %75, i64 0
  %77 = load double, double* %76, align 8
  %78 = fmul double 1.000000e-09, %77
  %79 = fadd double %78, 1.000000e-10
  store double %79, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %207, %70
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %210

84:                                               ; preds = %80
  %85 = load double*, double** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %85, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fneg double %90
  store double %91, double* %16, align 8
  %92 = load double, double* %11, align 8
  %93 = load double, double* %12, align 8
  %94 = fcmp olt double %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load double*, double** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memset(double* %99, i32 0, i32 %105)
  br label %211

107:                                              ; preds = %84
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %128, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load double*, double** %10, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %118, i64 %122
  %124 = load double, double* %123, align 8
  %125 = fmul double %117, %124
  %126 = load double, double* %16, align 8
  %127 = fsub double %126, %125
  store double %127, double* %16, align 8
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %108

131:                                              ; preds = %108
  %132 = load double, double* %11, align 8
  %133 = load double, double* %16, align 8
  %134 = fdiv double %133, %132
  store double %134, double* %16, align 8
  %135 = load double, double* %16, align 8
  %136 = load double*, double** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  store double %135, double* %139, align 8
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %179, %131
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sdiv i32 %142, 2
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %182

145:                                              ; preds = %140
  %146 = load double*, double** %10, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  store double %150, double* %17, align 8
  %151 = load double, double* %16, align 8
  %152 = load double*, double** %10, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %14, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %152, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fmul double %151, %159
  %161 = load double*, double** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = load double, double* %164, align 8
  %166 = fadd double %165, %160
  store double %166, double* %164, align 8
  %167 = load double, double* %16, align 8
  %168 = load double, double* %17, align 8
  %169 = fmul double %167, %168
  %170 = load double*, double** %10, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %170, i64 %175
  %177 = load double, double* %176, align 8
  %178 = fadd double %177, %169
  store double %178, double* %176, align 8
  br label %179

179:                                              ; preds = %145
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %140

182:                                              ; preds = %140
  %183 = load i32, i32* %13, align 4
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load double*, double** %10, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double, double* %187, i64 %189
  %191 = load double, double* %190, align 8
  %192 = load double, double* %16, align 8
  %193 = fmul double %191, %192
  %194 = load double*, double** %10, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %194, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fadd double %198, %193
  store double %199, double* %197, align 8
  br label %200

200:                                              ; preds = %186, %182
  %201 = load double, double* %16, align 8
  %202 = load double, double* %16, align 8
  %203 = fmul double %201, %202
  %204 = fsub double 1.000000e+00, %203
  %205 = load double, double* %11, align 8
  %206 = fmul double %205, %204
  store double %206, double* %11, align 8
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %80

210:                                              ; preds = %80
  br label %211

211:                                              ; preds = %210, %95
  store double 0x3FEFAE147AE147AE, double* %18, align 8
  %212 = load double, double* %18, align 8
  store double %212, double* %19, align 8
  store i32 0, i32* %14, align 4
  br label %213

213:                                              ; preds = %228, %211
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = load double, double* %19, align 8
  %219 = load double*, double** %10, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %219, i64 %221
  %223 = load double, double* %222, align 8
  %224 = fmul double %223, %218
  store double %224, double* %222, align 8
  %225 = load double, double* %18, align 8
  %226 = load double, double* %19, align 8
  %227 = fmul double %226, %225
  store double %227, double* %19, align 8
  br label %228

228:                                              ; preds = %217
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %213

231:                                              ; preds = %213
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %247, %231
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %232
  %237 = load double*, double** %10, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, double* %237, i64 %239
  %241 = load double, double* %240, align 8
  %242 = fptrunc double %241 to float
  %243 = load float*, float** %6, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  store float %242, float* %246, align 4
  br label %247

247:                                              ; preds = %236
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %14, align 4
  br label %232

250:                                              ; preds = %232
  %251 = load double, double* %11, align 8
  %252 = fptrunc double %251 to float
  ret float %252
}

declare dso_local double* @alloca(i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
