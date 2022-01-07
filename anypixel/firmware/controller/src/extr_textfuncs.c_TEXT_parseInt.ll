; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_textfuncs.c_TEXT_parseInt.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_textfuncs.c_TEXT_parseInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @TEXT_parseInt(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %13 = load i8, i8* %5, align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* %5, align 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %4, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %35, %15
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 57
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ false, %17 ], [ %32, %25 ]
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 10
  store i32 %38, i32* %36, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %5, align 1
  %41 = add i8 %40, 1
  store i8 %41, i8* %5, align 1
  %42 = sext i8 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %17

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i8, i8* %5, align 1
  ret i8 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
