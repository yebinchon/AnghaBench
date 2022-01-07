; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_calculate_liberties.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_calculate_liberties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (float*)* @calculate_liberties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @calculate_liberties(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [361 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float* %0, float** %2, align 8
  %8 = call i32* @calloc(i32 361, i32 4)
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %117, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 19
  br i1 %11, label %12, label %120

12:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %113, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %116

16:                                               ; preds = %13
  %17 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 1444)
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load float*, float** %2, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @occupied(float* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %112, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load float*, float** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64 @occupied(float* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load float*, float** %2, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load float*, float** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i64 @occupied(float* %43, i32 %45)
  %47 = call i32 @propagate_liberty(float* %37, i32* %38, i32* %39, i32 %40, i32 %42, i64 %46)
  br label %48

48:                                               ; preds = %36, %30, %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 18
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load float*, float** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i64 @occupied(float* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load float*, float** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  %64 = load float*, float** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i64 @occupied(float* %64, i32 %66)
  %68 = call i32 @propagate_liberty(float* %58, i32* %59, i32* %60, i32 %61, i32 %63, i64 %67)
  br label %69

69:                                               ; preds = %57, %51, %48
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load float*, float** %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 19
  %76 = call i64 @occupied(float* %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load float*, float** %2, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %5, align 4
  %85 = load float*, float** %2, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 19
  %88 = call i64 @occupied(float* %85, i32 %87)
  %89 = call i32 @propagate_liberty(float* %79, i32* %80, i32* %81, i32 %83, i32 %84, i64 %88)
  br label %90

90:                                               ; preds = %78, %72, %69
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 18
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load float*, float** %2, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 19
  %97 = call i64 @occupied(float* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load float*, float** %2, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %5, align 4
  %106 = load float*, float** %2, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 19
  %109 = call i64 @occupied(float* %106, i32 %108)
  %110 = call i32 @propagate_liberty(float* %100, i32* %101, i32* %102, i32 %104, i32 %105, i64 %109)
  br label %111

111:                                              ; preds = %99, %93, %90
  br label %112

112:                                              ; preds = %111, %16
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %13

116:                                              ; preds = %13
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %9

120:                                              ; preds = %9
  %121 = load i32*, i32** %3, align 8
  ret i32* %121
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @occupied(float*, i32) #1

declare dso_local i32 @propagate_liberty(float*, i32*, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
