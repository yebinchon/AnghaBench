; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_makes_safe_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_makes_safe_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, i32*, i32, i32, i32)* @makes_safe_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makes_safe_go(float* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp sge i32 %15, 19
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = icmp sge i32 %21, 19
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %14, %5
  store i32 0, i32* %6, align 4
  br label %67

24:                                               ; preds = %20
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 19
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 @occupied(float* %25, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, 19
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %67

45:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %67

46:                                               ; preds = %24
  %47 = load float*, float** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 19
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @occupied(float* %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %67

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 19
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65, %54, %45, %44, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
