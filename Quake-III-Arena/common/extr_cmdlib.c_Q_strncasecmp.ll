; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_Q_strncasecmp.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_cmdlib.c_Q_strncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q_strncasecmp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %56

23:                                               ; preds = %10
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 97
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 122
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 122
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %39, %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %56

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %10, label %55

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %49, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
