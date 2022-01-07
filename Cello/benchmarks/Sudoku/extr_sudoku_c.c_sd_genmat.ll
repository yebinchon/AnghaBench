; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_c.c_sd_genmat.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_c.c_sd_genmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @sd_genmat() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [324 x i64], align 16
  %10 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %1, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %89, %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 9
  br i1 %13, label %14, label %92

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %85, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %18, label %88

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %81, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = mul nsw i32 9, %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %26, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sdiv i32 %35, 3
  %37 = mul nsw i32 %36, 3
  %38 = load i32, i32* %3, align 4
  %39 = sdiv i32 %38, 3
  %40 = add nsw i32 %37, %39
  %41 = mul nsw i32 %40, 9
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %43, 81
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %44, i32* %52, align 4
  %53 = load i32, i32* %2, align 4
  %54 = mul nsw i32 9, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 162
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %57, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = mul nsw i32 9, %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %67, %68
  %70 = add nsw i32 %69, 243
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %70, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %22
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %19

84:                                               ; preds = %19
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %15

88:                                               ; preds = %15
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %2, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %2, align 4
  br label %11

92:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 324
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [324 x i64], [324 x i64]* %9, i64 0, i64 %98
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %93

103:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %141, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 729
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [324 x i64], [324 x i64]* %9, i64 0, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %123, i32* %136, align 4
  br label %137

137:                                              ; preds = %111
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %108

140:                                              ; preds = %108
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %104

144:                                              ; preds = %104
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %145
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
