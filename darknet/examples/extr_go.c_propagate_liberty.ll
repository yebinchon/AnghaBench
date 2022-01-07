; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_propagate_liberty.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_propagate_liberty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32*, i32*, i32, i32, i32)* @propagate_liberty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_liberty(float* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 18
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 18
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %6
  br label %84

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %27, 19
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @occupied(float* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %84

37:                                               ; preds = %26
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %84

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load float*, float** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  call void @propagate_liberty(float* %56, i32* %57, i32* %58, i32 %60, i32 %61, i32 %62)
  %63 = load float*, float** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  call void @propagate_liberty(float* %63, i32* %64, i32* %65, i32 %67, i32 %68, i32 %69)
  %70 = load float*, float** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %12, align 4
  call void @propagate_liberty(float* %70, i32* %71, i32* %72, i32 %73, i32 %75, i32 %76)
  %77 = load float*, float** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %12, align 4
  call void @propagate_liberty(float* %77, i32* %78, i32* %79, i32 %80, i32 %82, i32 %83)
  br label %84

84:                                               ; preds = %45, %44, %36, %25
  ret void
}

declare dso_local i32 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
