; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_correct.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, float*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_ferns_correct(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca [2 x float], align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x float], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ true, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load float*, float** %38, align 8
  store float* %39, float** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 0, i64 0
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = sitofp i32 %51 to double
  %53 = fdiv double 1.000000e+00, %52
  %54 = fptrunc double %53 to float
  store float %54, float* %47, align 4
  %55 = getelementptr inbounds float, float* %47, i64 1
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = sitofp i32 %59 to double
  %61 = fdiv double 1.000000e+00, %60
  %62 = fptrunc double %61 to float
  store float %62, float* %55, align 4
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %157, %21
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %160

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %75
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sitofp i32 %91 to float
  %93 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 0, i64 0
  %94 = load float, float* %93, align 4
  %95 = fmul float %92, %94
  %96 = fpext float %95 to double
  %97 = fadd double %96, 1.000000e-05
  %98 = fptrunc double %97 to float
  store float %98, float* %85, align 4
  %99 = getelementptr inbounds float, float* %85, i64 1
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to float
  %108 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 0, i64 1
  %109 = load float, float* %108, align 4
  %110 = fmul float %107, %109
  %111 = fpext float %110 to double
  %112 = fadd double %111, 1.000000e-05
  %113 = fptrunc double %112 to float
  store float %113, float* %99, align 4
  %114 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %115 = load float, float* %114, align 4
  %116 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %119 = load float, float* %118, align 4
  %120 = fadd float %117, %119
  %121 = fdiv float %115, %120
  %122 = call float @logf(float %121) #3
  %123 = load float*, float** %12, align 8
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %124, 2
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %123, i64 %126
  store float %122, float* %127, align 4
  %128 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %129 = load float, float* %128, align 4
  %130 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %131 = load float, float* %130, align 4
  %132 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %133 = load float, float* %132, align 4
  %134 = fadd float %131, %133
  %135 = fdiv float %129, %134
  %136 = call float @logf(float %135) #3
  %137 = load float*, float** %12, align 8
  %138 = load i32, i32* %14, align 4
  %139 = mul nsw i32 %138, 2
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %137, i64 %141
  store float %136, float* %142, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %145, 2
  %147 = load i32*, i32** %11, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %11, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 2
  %154 = load float*, float** %12, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds float, float* %154, i64 %155
  store float* %156, float** %12, align 8
  br label %157

157:                                              ; preds = %69
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %63

160:                                              ; preds = %63
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare dso_local float @logf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
