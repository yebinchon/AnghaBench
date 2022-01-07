; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_remove_connected.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_remove_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32*, i32, i32, i32)* @remove_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_connected(float* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 19
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %13, %5
  br label %84

23:                                               ; preds = %19
  %24 = load float*, float** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 19
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @occupied(float* %24, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %84

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 19
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %84

44:                                               ; preds = %33
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 19
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %45, i64 %50
  store float 0.000000e+00, float* %51, align 4
  %52 = load float*, float** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 19
  %55 = add nsw i32 361, %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %52, i64 %58
  store float 0.000000e+00, float* %59, align 4
  %60 = load float*, float** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %10, align 4
  call void @remove_connected(float* %60, i32* %61, i32 %62, i32 %64, i32 %65)
  %66 = load float*, float** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %10, align 4
  call void @remove_connected(float* %66, i32* %67, i32 %68, i32 %70, i32 %71)
  %72 = load float*, float** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  call void @remove_connected(float* %72, i32* %73, i32 %74, i32 %75, i32 %77)
  %78 = load float*, float** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  call void @remove_connected(float* %78, i32* %79, i32 %80, i32 %81, i32 %83)
  br label %84

84:                                               ; preds = %44, %43, %32, %22
  ret void
}

declare dso_local i32 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
