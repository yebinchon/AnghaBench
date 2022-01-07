; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_chunk_visible.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_chunk_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chunk_visible([4 x float]* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x float]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x [3 x float]], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  store [4 x float]* %0, [4 x float]** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CHUNK_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CHUNK_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @CHUNK_SIZE, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %15, i64 0, i64 0
  %33 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 0
  %36 = sitofp i32 %35 to float
  store float %36, float* %33, align 4
  %37 = getelementptr inbounds float, float* %33, i64 1
  %38 = load i32, i32* %10, align 4
  %39 = sitofp i32 %38 to float
  store float %39, float* %37, align 4
  %40 = getelementptr inbounds float, float* %37, i64 1
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 0
  %43 = sitofp i32 %42 to float
  store float %43, float* %40, align 4
  %44 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 1
  %45 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 0, i64 0
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = sitofp i32 %48 to float
  store float %49, float* %45, align 4
  %50 = getelementptr inbounds float, float* %45, i64 1
  %51 = load i32, i32* %10, align 4
  %52 = sitofp i32 %51 to float
  store float %52, float* %50, align 4
  %53 = getelementptr inbounds float, float* %50, i64 1
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 0
  %56 = sitofp i32 %55 to float
  store float %56, float* %53, align 4
  %57 = getelementptr inbounds [3 x float], [3 x float]* %44, i64 1
  %58 = getelementptr inbounds [3 x float], [3 x float]* %57, i64 0, i64 0
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 0
  %61 = sitofp i32 %60 to float
  store float %61, float* %58, align 4
  %62 = getelementptr inbounds float, float* %58, i64 1
  %63 = load i32, i32* %10, align 4
  %64 = sitofp i32 %63 to float
  store float %64, float* %62, align 4
  %65 = getelementptr inbounds float, float* %62, i64 1
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = sitofp i32 %68 to float
  store float %69, float* %65, align 4
  %70 = getelementptr inbounds [3 x float], [3 x float]* %57, i64 1
  %71 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 0, i64 0
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %72, %73
  %75 = sitofp i32 %74 to float
  store float %75, float* %71, align 4
  %76 = getelementptr inbounds float, float* %71, i64 1
  %77 = load i32, i32* %10, align 4
  %78 = sitofp i32 %77 to float
  store float %78, float* %76, align 4
  %79 = getelementptr inbounds float, float* %76, i64 1
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = sitofp i32 %82 to float
  store float %83, float* %79, align 4
  %84 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 1
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 0
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 0
  %88 = sitofp i32 %87 to float
  store float %88, float* %85, align 4
  %89 = getelementptr inbounds float, float* %85, i64 1
  %90 = load i32, i32* %11, align 4
  %91 = sitofp i32 %90 to float
  store float %91, float* %89, align 4
  %92 = getelementptr inbounds float, float* %89, i64 1
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 0
  %95 = sitofp i32 %94 to float
  store float %95, float* %92, align 4
  %96 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 1
  %97 = getelementptr inbounds [3 x float], [3 x float]* %96, i64 0, i64 0
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %98, %99
  %101 = sitofp i32 %100 to float
  store float %101, float* %97, align 4
  %102 = getelementptr inbounds float, float* %97, i64 1
  %103 = load i32, i32* %11, align 4
  %104 = sitofp i32 %103 to float
  store float %104, float* %102, align 4
  %105 = getelementptr inbounds float, float* %102, i64 1
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 0
  %108 = sitofp i32 %107 to float
  store float %108, float* %105, align 4
  %109 = getelementptr inbounds [3 x float], [3 x float]* %96, i64 1
  %110 = getelementptr inbounds [3 x float], [3 x float]* %109, i64 0, i64 0
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 0
  %113 = sitofp i32 %112 to float
  store float %113, float* %110, align 4
  %114 = getelementptr inbounds float, float* %110, i64 1
  %115 = load i32, i32* %11, align 4
  %116 = sitofp i32 %115 to float
  store float %116, float* %114, align 4
  %117 = getelementptr inbounds float, float* %114, i64 1
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = sitofp i32 %120 to float
  store float %121, float* %117, align 4
  %122 = getelementptr inbounds [3 x float], [3 x float]* %109, i64 1
  %123 = getelementptr inbounds [3 x float], [3 x float]* %122, i64 0, i64 0
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = sitofp i32 %126 to float
  store float %127, float* %123, align 4
  %128 = getelementptr inbounds float, float* %123, i64 1
  %129 = load i32, i32* %11, align 4
  %130 = sitofp i32 %129 to float
  store float %130, float* %128, align 4
  %131 = getelementptr inbounds float, float* %128, i64 1
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = sitofp i32 %134 to float
  store float %135, float* %131, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 4, i32 6
  store i32 %141, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %220, %5
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %223

146:                                              ; preds = %142
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %147

147:                                              ; preds = %212, %146
  %148 = load i32, i32* %20, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %215

150:                                              ; preds = %147
  %151 = load [4 x float]*, [4 x float]** %7, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x float], [4 x float]* %151, i64 %153
  %155 = getelementptr inbounds [4 x float], [4 x float]* %154, i64 0, i64 0
  %156 = load float, float* %155, align 4
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %15, i64 0, i64 %158
  %160 = getelementptr inbounds [3 x float], [3 x float]* %159, i64 0, i64 0
  %161 = load float, float* %160, align 4
  %162 = fmul float %156, %161
  %163 = load [4 x float]*, [4 x float]** %7, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x float], [4 x float]* %163, i64 %165
  %167 = getelementptr inbounds [4 x float], [4 x float]* %166, i64 0, i64 1
  %168 = load float, float* %167, align 4
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %15, i64 0, i64 %170
  %172 = getelementptr inbounds [3 x float], [3 x float]* %171, i64 0, i64 1
  %173 = load float, float* %172, align 4
  %174 = fmul float %168, %173
  %175 = fadd float %162, %174
  %176 = load [4 x float]*, [4 x float]** %7, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x float], [4 x float]* %176, i64 %178
  %180 = getelementptr inbounds [4 x float], [4 x float]* %179, i64 0, i64 2
  %181 = load float, float* %180, align 4
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %15, i64 0, i64 %183
  %185 = getelementptr inbounds [3 x float], [3 x float]* %184, i64 0, i64 2
  %186 = load float, float* %185, align 4
  %187 = fmul float %181, %186
  %188 = fadd float %175, %187
  %189 = load [4 x float]*, [4 x float]** %7, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x float], [4 x float]* %189, i64 %191
  %193 = getelementptr inbounds [4 x float], [4 x float]* %192, i64 0, i64 3
  %194 = load float, float* %193, align 4
  %195 = fadd float %188, %194
  store float %195, float* %21, align 4
  %196 = load float, float* %21, align 4
  %197 = fcmp olt float %196, 0.000000e+00
  br i1 %197, label %198, label %201

198:                                              ; preds = %150
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %204

201:                                              ; preds = %150
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %215

211:                                              ; preds = %207, %204
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %20, align 4
  br label %147

215:                                              ; preds = %210, %147
  %216 = load i32, i32* %18, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 0, i32* %6, align 4
  br label %224

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %17, align 4
  br label %142

223:                                              ; preds = %142
  store i32 1, i32* %6, align 4
  br label %224

224:                                              ; preds = %223, %218
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
