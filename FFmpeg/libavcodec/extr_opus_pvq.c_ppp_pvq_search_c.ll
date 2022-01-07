; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_ppp_pvq_search_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_ppp_pvq_search_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, i32*, i32, i32)* @ppp_pvq_search_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @ppp_pvq_search_c(float* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %34, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load float*, float** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = call i32 @FFABS(float %29)
  %31 = sitofp i32 %30 to float
  %32 = load float, float* %11, align 4
  %33 = fadd float %32, %31
  store float %33, float* %11, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = sitofp i32 %38 to float
  %40 = load float, float* %11, align 4
  %41 = load float, float* @FLT_EPSILON, align 4
  %42 = fadd float %40, %41
  %43 = fdiv float %39, %42
  store float %43, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %97, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %44
  %49 = load float, float* %11, align 4
  %50 = load float*, float** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fmul float %49, %54
  %56 = call i32 @lrintf(float %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to float
  %80 = load float*, float** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fmul float %79, %84
  %86 = load float, float* %12, align 4
  %87 = fadd float %86, %85
  store float %87, float* %12, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to float
  %94 = call i32 @FFABS(float %93)
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %48
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %44

100:                                              ; preds = %44
  br label %101

101:                                              ; preds = %176, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %216

104:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sitofp i32 %105 to float
  %107 = call i32 @FFSIGN(float %106)
  store i32 %107, i32* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 1.000000e+00, float* %16, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sitofp i32 %108 to float
  %110 = fadd float %109, 1.000000e+00
  %111 = fptosi float %110 to i32
  store i32 %111, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %173, %104
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %176

116:                                              ; preds = %112
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = and i32 %123, %126
  %128 = xor i32 1, %127
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 2, %130
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sitofp i32 %136 to float
  %138 = call i32 @FFABS(float %137)
  %139 = mul nsw i32 %131, %138
  %140 = add nsw i32 %129, %139
  store i32 %140, i32* %18, align 4
  %141 = load float, float* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 1, %142
  %144 = load float*, float** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = call i32 @FFABS(float %148)
  %150 = mul nsw i32 %143, %149
  %151 = sitofp i32 %150 to float
  %152 = fadd float %141, %151
  store float %152, float* %19, align 4
  %153 = load float, float* %19, align 4
  %154 = load float, float* %19, align 4
  %155 = fmul float %153, %154
  store float %155, float* %19, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %116
  %159 = load float, float* %16, align 4
  %160 = load float, float* %19, align 4
  %161 = fmul float %159, %160
  %162 = load i32, i32* %18, align 4
  %163 = sitofp i32 %162 to float
  %164 = load float, float* %15, align 4
  %165 = fmul float %163, %164
  %166 = fcmp ogt float %161, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load i32, i32* %18, align 4
  %169 = sitofp i32 %168 to float
  store float %169, float* %16, align 4
  %170 = load float, float* %19, align 4
  store float %170, float* %15, align 4
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %167, %158, %116
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %112

176:                                              ; preds = %112
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load float*, float** %5, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = call i32 @FFSIGN(float %184)
  %186 = load i32, i32* %14, align 4
  %187 = mul nsw i32 %186, %185
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 1, %188
  %190 = sitofp i32 %189 to float
  %191 = load float*, float** %5, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  %196 = fmul float %190, %195
  %197 = load float, float* %12, align 4
  %198 = fadd float %197, %196
  store float %198, float* %12, align 4
  %199 = load i32, i32* %14, align 4
  %200 = mul nsw i32 2, %199
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %209
  store i32 %215, i32* %213, align 4
  br label %101

216:                                              ; preds = %101
  %217 = load i32, i32* %10, align 4
  %218 = sitofp i32 %217 to float
  ret float %218
}

declare dso_local i32 @FFABS(float) #1

declare dso_local i32 @lrintf(float) #1

declare dso_local i32 @FFSIGN(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
