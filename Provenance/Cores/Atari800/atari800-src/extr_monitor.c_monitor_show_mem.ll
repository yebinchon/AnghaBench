; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_show_mem.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_show_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%04X: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @monitor_show_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_show_mem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  store i32 16, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @get_hex(i32* %6)
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %22, %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @MEMORY_SafeGetByte(i32 %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %12

25:                                               ; preds = %12
  %26 = call i32 @putchar(i8 signext 32)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %57, %25
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MEMORY_SafeGetByte(i32 %32)
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %5, align 1
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8, i8* %5, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 32
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 122
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 96
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  br label %53

52:                                               ; preds = %45, %41, %30
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 46, %52 ]
  %55 = trunc i32 %54 to i8
  %56 = call i32 @putchar(i8 signext %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %27

60:                                               ; preds = %27
  %61 = call i32 @putchar(i8 signext 10)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %8, label %66

66:                                               ; preds = %62
  ret void
}

declare dso_local i32 @get_hex(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @MEMORY_SafeGetByte(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
