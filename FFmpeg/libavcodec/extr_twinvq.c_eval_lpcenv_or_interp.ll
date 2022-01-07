; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpcenv_or_interp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_eval_lpcenv_or_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, float*, float*, i32, i32, i32)* @eval_lpcenv_or_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_lpcenv_or_interp(%struct.TYPE_5__* %0, i32 %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %16, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load float**, float*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds float*, float** %23, i64 %25
  %27 = load float*, float** %26, align 8
  store float* %27, float** %17, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %47, %7
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load float*, float** %11, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load float*, float** %17, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @get_cos(i32 %34, i32 %35, float* %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call float @eval_lpc_spectrum(float* %33, i32 %38, i32 %41)
  %43 = load float*, float** %10, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  store float %42, float* %46, align 4
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %203, %51
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 2, %56
  %58 = sub nsw i32 %55, %57
  %59 = icmp sle i32 %54, %58
  br i1 %59, label %60, label %207

60:                                               ; preds = %53
  %61 = load float*, float** %10, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %61, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %10, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %68, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %67, %74
  %76 = fpext float %75 to double
  %77 = load float*, float** %10, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = fmul double 1.950000e+00, %82
  %84 = fcmp ogt double %76, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %60
  %86 = load float*, float** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %86, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %10, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %93, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fcmp oge float %92, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %85, %60
  %102 = load float*, float** %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = getelementptr inbounds float, float* %109, i64 1
  %111 = load float*, float** %10, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %10, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %116, i64 %120
  %122 = load float, float* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @interpolate(float* %110, float %115, float %122, i32 %124)
  br label %202

126:                                              ; preds = %85
  %127 = load float*, float** %11, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sdiv i32 %129, 2
  %131 = sub nsw i32 %128, %130
  %132 = load i32, i32* %14, align 4
  %133 = load float*, float** %17, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @get_cos(i32 %131, i32 %132, float* %133, i32 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call float @eval_lpc_spectrum(float* %127, i32 %135, i32 %138)
  %140 = load float*, float** %10, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %141, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %140, i64 %145
  store float %139, float* %146, align 4
  %147 = load float*, float** %10, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds float, float* %150, i64 %153
  %155 = getelementptr inbounds float, float* %154, i64 1
  %156 = load float*, float** %10, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sdiv i32 %158, 2
  %160 = sub nsw i32 %157, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %156, i64 %161
  %163 = load float, float* %162, align 4
  %164 = load float*, float** %10, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %164, i64 %168
  %170 = load float, float* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = sdiv i32 %171, 2
  %173 = sub nsw i32 %172, 1
  %174 = call i32 @interpolate(float* %155, float %163, float %170, i32 %173)
  %175 = load float*, float** %10, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load i32, i32* %13, align 4
  %180 = sdiv i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = sub i64 0, %181
  %183 = getelementptr inbounds float, float* %178, i64 %182
  %184 = getelementptr inbounds float, float* %183, i64 1
  %185 = load float*, float** %10, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %10, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sdiv i32 %192, 2
  %194 = sub nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %190, i64 %195
  %197 = load float, float* %196, align 4
  %198 = load i32, i32* %13, align 4
  %199 = sdiv i32 %198, 2
  %200 = sub nsw i32 %199, 1
  %201 = call i32 @interpolate(float* %184, float %189, float %197, i32 %200)
  br label %202

202:                                              ; preds = %126, %101
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %15, align 4
  br label %53

207:                                              ; preds = %53
  %208 = load float*, float** %10, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load i32, i32* %13, align 4
  %213 = mul nsw i32 2, %212
  %214 = sext i32 %213 to i64
  %215 = sub i64 0, %214
  %216 = getelementptr inbounds float, float* %211, i64 %215
  %217 = getelementptr inbounds float, float* %216, i64 1
  %218 = load float*, float** %10, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %13, align 4
  %221 = sub nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %218, i64 %222
  %224 = load float, float* %223, align 4
  %225 = load float*, float** %10, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = mul nsw i32 2, %227
  %229 = sub nsw i32 %226, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %225, i64 %230
  %232 = load float, float* %231, align 4
  %233 = load i32, i32* %13, align 4
  %234 = sub nsw i32 %233, 1
  %235 = call i32 @interpolate(float* %217, float %224, float %232, i32 %234)
  ret void
}

declare dso_local float @eval_lpc_spectrum(float*, i32, i32) #1

declare dso_local i32 @get_cos(i32, i32, float*, i32) #1

declare dso_local i32 @interpolate(float*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
