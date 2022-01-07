; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_predict.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_ferns.c_ccv_ferns_predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ccv_ferns_predict(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = bitcast [2 x float]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  store float* %11, float** %7, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load float*, float** %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %19, i64 %26
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %30 = load float, float* %29, align 4
  %31 = fadd float %30, %28
  store float %31, float* %29, align 4
  %32 = load float*, float** %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %32, i64 %40
  %42 = load float, float* %41, align 4
  %43 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, %42
  store float %45, float* %43, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load float*, float** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds float, float* %50, i64 %51
  store float* %52, float** %7, align 8
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %12
  %57 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %58 = load float, float* %57, align 4
  %59 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %60 = load float, float* %59, align 4
  %61 = fsub float %58, %60
  ret float %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
