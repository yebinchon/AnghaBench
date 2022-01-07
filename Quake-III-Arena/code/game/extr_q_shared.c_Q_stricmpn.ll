; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_Q_stricmpn.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_Q_stricmpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q_stricmpn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %74

16:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %74

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %74

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 32
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %43, %40
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 122
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 -1, i32 1
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %36
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %23, label %73

73:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %62, %35, %20, %16, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
