; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_flip_board.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_flip_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flip_board(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store float* %0, float** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 361
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = load float*, float** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, float* %9, i64 %11
  %13 = load float, float* %12, align 4
  store float %13, float* %4, align 4
  %14 = load float*, float** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 361
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  store float %19, float* %23, align 4
  %24 = load float, float* %4, align 4
  %25 = load float*, float** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 361
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  store float %24, float* %29, align 4
  %30 = load float*, float** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 722
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %30, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fsub float 1.000000e+00, %35
  %37 = load float*, float** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 722
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %37, i64 %40
  store float %36, float* %41, align 4
  br label %42

42:                                               ; preds = %8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
