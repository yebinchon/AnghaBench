; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c_make_plant.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c_make_plant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@make_plant.positions = internal constant [4 x [4 x [3 x float]]] [[4 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00]], [4 x [3 x float]] [[3 x float] [float 0.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00]], [4 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00]], [4 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00]]], align 16
@make_plant.normals = internal constant [4 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], align 16
@make_plant.uvs = internal constant [4 x [4 x [2 x float]]] [[4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00]], [4 x [2 x float]] [[2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] zeroinitializer, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00]], [4 x [2 x float]] [[2 x float] zeroinitializer, [2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00]], [4 x [2 x float]] [[2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [2 x float] [float 0.000000e+00, float 1.000000e+00]]], align 16
@make_plant.indices = internal constant [4 x [6 x float]] [[6 x float] [float 0.000000e+00, float 3.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+00, float 3.000000e+00], [6 x float] [float 0.000000e+00, float 3.000000e+00, float 1.000000e+00, float 0.000000e+00, float 2.000000e+00, float 3.000000e+00], [6 x float] [float 0.000000e+00, float 3.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+00, float 3.000000e+00], [6 x float] [float 0.000000e+00, float 3.000000e+00, float 1.000000e+00, float 0.000000e+00, float 2.000000e+00, float 3.000000e+00]], align 16
@plants = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_plant(float* %0, float %1, float %2, float %3, float %4, float %5, float %6, i32 %7, float %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [16 x float], align 16
  %29 = alloca [16 x float], align 16
  store float* %0, float** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store i32 %7, i32* %17, align 4
  store float %8, float* %18, align 4
  %30 = load float*, float** %10, align 8
  store float* %30, float** %19, align 8
  store float 6.250000e-02, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %31 = load float, float* %20, align 4
  store float %31, float* %22, align 4
  %32 = load i32*, i32** @plants, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %36, 16
  %38 = sitofp i32 %37 to float
  %39 = load float, float* %20, align 4
  %40 = fmul float %38, %39
  store float %40, float* %23, align 4
  %41 = load i32*, i32** @plants, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 16
  %47 = sitofp i32 %46 to float
  %48 = load float, float* %20, align 4
  %49 = fmul float %47, %48
  store float %49, float* %24, align 4
  store i32 0, i32* %25, align 4
  br label %50

50:                                               ; preds = %171, %9
  %51 = load i32, i32* %25, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %174

53:                                               ; preds = %50
  store i32 0, i32* %26, align 4
  br label %54

54:                                               ; preds = %167, %53
  %55 = load i32, i32* %26, align 4
  %56 = icmp slt i32 %55, 6
  br i1 %56, label %57, label %170

57:                                               ; preds = %54
  %58 = load i32, i32* %25, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x [6 x float]], [4 x [6 x float]]* @make_plant.indices, i64 0, i64 %59
  %61 = load i32, i32* %26, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x float], [6 x float]* %60, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fptosi float %64 to i32
  store i32 %65, i32* %27, align 4
  %66 = load float, float* %16, align 4
  %67 = load i32, i32* %25, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x [4 x [3 x float]]], [4 x [4 x [3 x float]]]* @make_plant.positions, i64 0, i64 %68
  %70 = load i32, i32* %27, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %69, i64 0, i64 %71
  %73 = getelementptr inbounds [3 x float], [3 x float]* %72, i64 0, i64 0
  %74 = load float, float* %73, align 4
  %75 = fmul float %66, %74
  %76 = load float*, float** %19, align 8
  %77 = getelementptr inbounds float, float* %76, i32 1
  store float* %77, float** %19, align 8
  store float %75, float* %76, align 4
  %78 = load float, float* %16, align 4
  %79 = load i32, i32* %25, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x [4 x [3 x float]]], [4 x [4 x [3 x float]]]* @make_plant.positions, i64 0, i64 %80
  %82 = load i32, i32* %27, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %81, i64 0, i64 %83
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 1
  %86 = load float, float* %85, align 4
  %87 = fmul float %78, %86
  %88 = load float*, float** %19, align 8
  %89 = getelementptr inbounds float, float* %88, i32 1
  store float* %89, float** %19, align 8
  store float %87, float* %88, align 4
  %90 = load float, float* %16, align 4
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x [4 x [3 x float]]], [4 x [4 x [3 x float]]]* @make_plant.positions, i64 0, i64 %92
  %94 = load i32, i32* %27, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %93, i64 0, i64 %95
  %97 = getelementptr inbounds [3 x float], [3 x float]* %96, i64 0, i64 2
  %98 = load float, float* %97, align 4
  %99 = fmul float %90, %98
  %100 = load float*, float** %19, align 8
  %101 = getelementptr inbounds float, float* %100, i32 1
  store float* %101, float** %19, align 8
  store float %99, float* %100, align 4
  %102 = load i32, i32* %25, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* @make_plant.normals, i64 0, i64 %103
  %105 = getelementptr inbounds [3 x float], [3 x float]* %104, i64 0, i64 0
  %106 = load float, float* %105, align 4
  %107 = load float*, float** %19, align 8
  %108 = getelementptr inbounds float, float* %107, i32 1
  store float* %108, float** %19, align 8
  store float %106, float* %107, align 4
  %109 = load i32, i32* %25, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* @make_plant.normals, i64 0, i64 %110
  %112 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 0, i64 1
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %19, align 8
  %115 = getelementptr inbounds float, float* %114, i32 1
  store float* %115, float** %19, align 8
  store float %113, float* %114, align 4
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* @make_plant.normals, i64 0, i64 %117
  %119 = getelementptr inbounds [3 x float], [3 x float]* %118, i64 0, i64 2
  %120 = load float, float* %119, align 4
  %121 = load float*, float** %19, align 8
  %122 = getelementptr inbounds float, float* %121, i32 1
  store float* %122, float** %19, align 8
  store float %120, float* %121, align 4
  %123 = load float, float* %23, align 4
  %124 = load i32, i32* %25, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x [4 x [2 x float]]], [4 x [4 x [2 x float]]]* @make_plant.uvs, i64 0, i64 %125
  %127 = load i32, i32* %27, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %126, i64 0, i64 %128
  %130 = getelementptr inbounds [2 x float], [2 x float]* %129, i64 0, i64 0
  %131 = load float, float* %130, align 8
  %132 = fcmp une float %131, 0.000000e+00
  br i1 %132, label %133, label %135

133:                                              ; preds = %57
  %134 = load float, float* %22, align 4
  br label %137

135:                                              ; preds = %57
  %136 = load float, float* %21, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi float [ %134, %133 ], [ %136, %135 ]
  %139 = fadd float %123, %138
  %140 = load float*, float** %19, align 8
  %141 = getelementptr inbounds float, float* %140, i32 1
  store float* %141, float** %19, align 8
  store float %139, float* %140, align 4
  %142 = load float, float* %24, align 4
  %143 = load i32, i32* %25, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x [4 x [2 x float]]], [4 x [4 x [2 x float]]]* @make_plant.uvs, i64 0, i64 %144
  %146 = load i32, i32* %27, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %145, i64 0, i64 %147
  %149 = getelementptr inbounds [2 x float], [2 x float]* %148, i64 0, i64 1
  %150 = load float, float* %149, align 4
  %151 = fcmp une float %150, 0.000000e+00
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load float, float* %22, align 4
  br label %156

154:                                              ; preds = %137
  %155 = load float, float* %21, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi float [ %153, %152 ], [ %155, %154 ]
  %158 = fadd float %142, %157
  %159 = load float*, float** %19, align 8
  %160 = getelementptr inbounds float, float* %159, i32 1
  store float* %160, float** %19, align 8
  store float %158, float* %159, align 4
  %161 = load float, float* %11, align 4
  %162 = load float*, float** %19, align 8
  %163 = getelementptr inbounds float, float* %162, i32 1
  store float* %163, float** %19, align 8
  store float %161, float* %162, align 4
  %164 = load float, float* %12, align 4
  %165 = load float*, float** %19, align 8
  %166 = getelementptr inbounds float, float* %165, i32 1
  store float* %166, float** %19, align 8
  store float %164, float* %165, align 4
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %26, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %26, align 4
  br label %54

170:                                              ; preds = %54
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %25, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %25, align 4
  br label %50

174:                                              ; preds = %50
  %175 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %176 = call i32 @mat_identity(float* %175)
  %177 = getelementptr inbounds [16 x float], [16 x float]* %29, i64 0, i64 0
  %178 = load float, float* %18, align 4
  %179 = call i32 @RADIANS(float %178)
  %180 = call i32 @mat_rotate(float* %177, i32 0, i32 1, i32 0, i32 %179)
  %181 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %182 = getelementptr inbounds [16 x float], [16 x float]* %29, i64 0, i64 0
  %183 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %184 = call i32 @mat_multiply(float* %181, float* %182, float* %183)
  %185 = load float*, float** %10, align 8
  %186 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %187 = call i32 @mat_apply(float* %185, float* %186, i32 24, i32 3, i32 10)
  %188 = getelementptr inbounds [16 x float], [16 x float]* %29, i64 0, i64 0
  %189 = load float, float* %13, align 4
  %190 = load float, float* %14, align 4
  %191 = load float, float* %15, align 4
  %192 = call i32 @mat_translate(float* %188, float %189, float %190, float %191)
  %193 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %194 = getelementptr inbounds [16 x float], [16 x float]* %29, i64 0, i64 0
  %195 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %196 = call i32 @mat_multiply(float* %193, float* %194, float* %195)
  %197 = load float*, float** %10, align 8
  %198 = getelementptr inbounds [16 x float], [16 x float]* %28, i64 0, i64 0
  %199 = call i32 @mat_apply(float* %197, float* %198, i32 24, i32 0, i32 10)
  ret void
}

declare dso_local i32 @mat_identity(float*) #1

declare dso_local i32 @mat_rotate(float*, i32, i32, i32, i32) #1

declare dso_local i32 @RADIANS(float) #1

declare dso_local i32 @mat_multiply(float*, float*, float*) #1

declare dso_local i32 @mat_apply(float*, float*, i32, i32, i32) #1

declare dso_local i32 @mat_translate(float*, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
