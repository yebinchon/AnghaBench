; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_READ.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_READ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@translation = common dso_local global i64 0, align 8
@bufout = common dso_local global i32* null, align 8
@CPU_regA = common dso_local global i32 0, align 4
@bufend = common dso_local global i32 0, align 4
@linefeeds = common dso_local global i64 0, align 8
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RDevice_READ() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @translation, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32*, i32** @bufout, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 13
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 155, i32* @CPU_regA, align 4
  br label %10

10:                                               ; preds = %9, %4
  br label %15

11:                                               ; preds = %0
  %12 = load i32*, i32** @bufout, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @CPU_regA, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* @bufend, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @bufend, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @bufend, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32*, i32** @bufout, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @bufout, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load i64, i64* @translation, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i64, i64* @linefeeds, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i32*, i32** @bufout, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @bufend, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i32*, i32** @bufout, align 8
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @bufout, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %48

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %42, %39, %36
  store i32 1, i32* @CPU_regY, align 4
  %68 = load i32, i32* @CPU_ClrN, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
