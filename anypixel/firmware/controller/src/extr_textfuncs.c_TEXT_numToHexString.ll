; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_textfuncs.c_TEXT_numToHexString.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_textfuncs.c_TEXT_numToHexString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num2hex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TEXT_numToHexString(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %5
  store i32 0, i32* %6, align 4
  br label %77

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32*, i32** @num2hex, align 8
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 15
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %77

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  br label %45

55:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %43, %21
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
