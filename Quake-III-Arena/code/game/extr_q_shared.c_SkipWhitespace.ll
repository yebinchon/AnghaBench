; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_SkipWhitespace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_SkipWhitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_lines = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @SkipWhitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SkipWhitespace(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = icmp sle i32 %10, 32
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %29

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @com_lines, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @com_lines, align 4
  %22 = load i32, i32* @qtrue, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
