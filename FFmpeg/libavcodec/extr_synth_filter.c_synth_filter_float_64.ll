; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_synth_filter.c_synth_filter_float_64.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_synth_filter.c_synth_filter_float_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, float*, float*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float*, i32*, float*, float*, float*, float*, float)* @synth_filter_float_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synth_filter_float_64(%struct.TYPE_4__* %0, float* %1, i32* %2, float* %3, float* %4, float* %5, float* %6, float %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store float* %1, float** %10, align 8
  store i32* %2, i32** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float %7, float* %16, align 4
  %24 = load float*, float** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %24, i64 %27
  store float* %28, float** %17, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*, float*, float*)*, i32 (%struct.TYPE_4__*, float*, float*)** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = load float*, float** %17, align 8
  %34 = load float*, float** %15, align 8
  %35 = call i32 %31(%struct.TYPE_4__* %32, float* %33, float* %34)
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %250, %8
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %253

39:                                               ; preds = %36
  %40 = load float*, float** %12, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  store float %44, float* %20, align 4
  %45 = load float*, float** %12, align 8
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %45, i64 %48
  %50 = load float, float* %49, align 4
  store float %50, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %133, %39
  %52 = load i32, i32* %19, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 1024, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %136

57:                                               ; preds = %51
  %58 = load float*, float** %13, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %58, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load float*, float** %17, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sub nsw i32 31, %66
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %65, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fneg float %72
  %74 = fmul float %64, %73
  %75 = load float, float* %20, align 4
  %76 = fadd float %75, %74
  store float %76, float* %20, align 4
  %77 = load float*, float** %13, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %77, i64 %82
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %17, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %85, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fmul float %84, %91
  %93 = load float, float* %21, align 4
  %94 = fadd float %93, %92
  store float %94, float* %21, align 4
  %95 = load float*, float** %13, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %98, 64
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %95, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %17, align 8
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 32, %104
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %103, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fmul float %102, %110
  %112 = load float, float* %22, align 4
  %113 = fadd float %112, %111
  store float %113, float* %22, align 4
  %114 = load float*, float** %13, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %115, %116
  %118 = add nsw i32 %117, 96
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %114, i64 %119
  %121 = load float, float* %120, align 4
  %122 = load float*, float** %17, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sub nsw i32 63, %123
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %122, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fmul float %121, %129
  %131 = load float, float* %23, align 4
  %132 = fadd float %131, %130
  store float %132, float* %23, align 4
  br label %133

133:                                              ; preds = %57
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 128
  store i32 %135, i32* %19, align 4
  br label %51

136:                                              ; preds = %51
  br label %137

137:                                              ; preds = %220, %136
  %138 = load i32, i32* %19, align 4
  %139 = icmp slt i32 %138, 1024
  br i1 %139, label %140, label %223

140:                                              ; preds = %137
  %141 = load float*, float** %13, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %141, i64 %145
  %147 = load float, float* %146, align 4
  %148 = load float*, float** %17, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sub nsw i32 31, %149
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1024
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %148, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fneg float %156
  %158 = fmul float %147, %157
  %159 = load float, float* %20, align 4
  %160 = fadd float %159, %158
  store float %160, float* %20, align 4
  %161 = load float*, float** %13, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %162, %163
  %165 = add nsw i32 %164, 32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %161, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load float*, float** %17, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %170, %171
  %173 = sub nsw i32 %172, 1024
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %169, i64 %174
  %176 = load float, float* %175, align 4
  %177 = fmul float %168, %176
  %178 = load float, float* %21, align 4
  %179 = fadd float %178, %177
  store float %179, float* %21, align 4
  %180 = load float*, float** %13, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 64
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %180, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load float*, float** %17, align 8
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 32, %189
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %190, %191
  %193 = sub nsw i32 %192, 1024
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %188, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fmul float %187, %196
  %198 = load float, float* %22, align 4
  %199 = fadd float %198, %197
  store float %199, float* %22, align 4
  %200 = load float*, float** %13, align 8
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %201, %202
  %204 = add nsw i32 %203, 96
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %200, i64 %205
  %207 = load float, float* %206, align 4
  %208 = load float*, float** %17, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 63, %209
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %210, %211
  %213 = sub nsw i32 %212, 1024
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %208, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fmul float %207, %216
  %218 = load float, float* %23, align 4
  %219 = fadd float %218, %217
  store float %219, float* %23, align 4
  br label %220

220:                                              ; preds = %140
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 128
  store i32 %222, i32* %19, align 4
  br label %137

223:                                              ; preds = %137
  %224 = load float, float* %20, align 4
  %225 = load float, float* %16, align 4
  %226 = fmul float %224, %225
  %227 = load float*, float** %14, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  store float %226, float* %230, align 4
  %231 = load float, float* %21, align 4
  %232 = load float, float* %16, align 4
  %233 = fmul float %231, %232
  %234 = load float*, float** %14, align 8
  %235 = load i32, i32* %18, align 4
  %236 = add nsw i32 %235, 32
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %234, i64 %237
  store float %233, float* %238, align 4
  %239 = load float, float* %22, align 4
  %240 = load float*, float** %12, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  store float %239, float* %243, align 4
  %244 = load float, float* %23, align 4
  %245 = load float*, float** %12, align 8
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, 32
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %245, i64 %248
  store float %244, float* %249, align 4
  br label %250

250:                                              ; preds = %223
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %18, align 4
  br label %36

253:                                              ; preds = %36
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 64
  %257 = and i32 %256, 1023
  %258 = load i32*, i32** %11, align 8
  store i32 %257, i32* %258, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
