; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_cello.c_Sudoku_New.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_cello.c_Sudoku_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sudoku = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Sudoku*, %struct.Sudoku*)* @Sudoku_New to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sudoku_New(%struct.Sudoku* %0, %struct.Sudoku* %1) #0 {
  %3 = alloca %struct.Sudoku*, align 8
  %4 = alloca %struct.Sudoku*, align 8
  %5 = alloca %struct.Sudoku*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [324 x i64], align 16
  store %struct.Sudoku* %0, %struct.Sudoku** %3, align 8
  store %struct.Sudoku* %1, %struct.Sudoku** %4, align 8
  %13 = load %struct.Sudoku*, %struct.Sudoku** %3, align 8
  store %struct.Sudoku* %13, %struct.Sudoku** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %92, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %95

17:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %88, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 9
  br i1 %20, label %21, label %91

21:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %84, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %87

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 9, %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %31 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %29, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 3
  %40 = mul nsw i32 %39, 3
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %41, 3
  %43 = add nsw i32 %40, %42
  %44 = mul nsw i32 %43, 9
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 81
  %48 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %49 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %47, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 9, %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 162
  %61 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %62 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 9, %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 243
  %74 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %75 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 %73, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %25
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %22

87:                                               ; preds = %22
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %18

91:                                               ; preds = %18
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %14

95:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %103, %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 324
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [324 x i64], [324 x i64]* %12, i64 0, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %96

106:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %144, %106
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 729
  br i1 %109, label %110, label %147

110:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %140, %110
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %116 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.Sudoku*, %struct.Sudoku** %5, align 8
  %128 = getelementptr inbounds %struct.Sudoku, %struct.Sudoku* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [324 x i64], [324 x i64]* %12, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32 %126, i32* %139, align 4
  br label %140

140:                                              ; preds = %114
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %111

143:                                              ; preds = %111
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %107

147:                                              ; preds = %107
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
