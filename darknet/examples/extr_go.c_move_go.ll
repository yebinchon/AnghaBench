; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_move_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_move_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_go(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load float*, float** %5, align 8
  %11 = call i32* @calculate_liberties(float* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load float*, float** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 19
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %15, i64 %20
  store float 1.000000e+00, float* %21, align 4
  br label %31

22:                                               ; preds = %4
  %23 = load float*, float** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 19
  %26 = add nsw i32 361, %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %23, i64 %29
  store float 1.000000e+00, float* %30, align 4
  br label %31

31:                                               ; preds = %22, %14
  %32 = load float*, float** %5, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 0, %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @remove_connected(float* %32, i32* %33, i32 %35, i32 %37, i32 %38)
  %40 = load float*, float** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 0, %42
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @remove_connected(float* %40, i32* %41, i32 %43, i32 %45, i32 %46)
  %48 = load float*, float** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @remove_connected(float* %48, i32* %49, i32 %51, i32 %52, i32 %54)
  %56 = load float*, float** %5, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 0, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @remove_connected(float* %56, i32* %57, i32 %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @free(i32* %64)
  ret void
}

declare dso_local i32* @calculate_liberties(float*) #1

declare dso_local i32 @remove_connected(float*, i32*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
