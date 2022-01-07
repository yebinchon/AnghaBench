; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_matrix.c_matrix_topk_accuracy.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_matrix.c_matrix_topk_accuracy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @matrix_topk_accuracy(i64 %0, i64** %1, i64 %2, i64** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_4__* %6 to { i64, i64** }*
  %16 = getelementptr inbounds { i64, i64** }, { i64, i64** }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64** }, { i64, i64** }* %15, i32 0, i32 1
  store i64** %1, i64*** %17, align 8
  %18 = bitcast %struct.TYPE_4__* %7 to { i64, i64** }*
  %19 = getelementptr inbounds { i64, i64** }, { i64, i64** }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64** }, { i64, i64** }* %18, i32 0, i32 1
  store i64** %3, i64*** %20, align 8
  store i32 %4, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @calloc(i32 %21, i32 4)
  store i32* %22, i32** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %70, %5
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %32 = load i64**, i64*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @top_k(i64* %36, i32 %37, i32 %38, i32* %39)
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %66, %30
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %52 = load i64**, i64*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %69

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %41

69:                                               ; preds = %62, %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %25

73:                                               ; preds = %25
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @free(i32* %74)
  %76 = load i32, i32* %13, align 4
  %77 = sitofp i32 %76 to float
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %77, %80
  ret float %81
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @top_k(i64*, i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
