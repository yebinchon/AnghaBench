; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_search_mem.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_search_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@monitor_search_mem.n = internal global i32 0, align 4
@monitor_search_mem.addr1 = internal global i32 0, align 4
@monitor_search_mem.addr2 = internal global i32 0, align 4
@monitor_search_mem.tab = internal global [64 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"Found at %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @monitor_search_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_search_mem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 @get_hex3(i32* @monitor_search_mem.addr1, i32* @monitor_search_mem.addr2, i32* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %0
  store i32 0, i32* @monitor_search_mem.n, align 4
  br label %7

7:                                                ; preds = %34, %6
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @monitor_search_mem.n, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @monitor_search_mem.n, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [64 x i64], [64 x i64]* @monitor_search_mem.tab, i64 0, i64 %12
  store i64 %9, i64* %13, align 8
  %14 = load i32, i32* %1, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %27

16:                                               ; preds = %7
  %17 = load i32, i32* @monitor_search_mem.n, align 4
  %18 = icmp slt i32 %17, 64
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @monitor_search_mem.n, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @monitor_search_mem.n, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [64 x i64], [64 x i64]* @monitor_search_mem.tab, i64 0, i64 %25
  store i64 %22, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %16, %7
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @monitor_search_mem.n, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i64 @get_hex(i32* %1)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %7, label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %0
  %38 = load i32, i32* @monitor_search_mem.n, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load i32, i32* @monitor_search_mem.addr1, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %68, %40
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @monitor_search_mem.addr2, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %66, %46
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i64 @MEMORY_SafeGetByte(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [64 x i64], [64 x i64]* @monitor_search_mem.tab, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @monitor_search_mem.n, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %57
  br label %47

67:                                               ; preds = %63, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %42

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71, %37
  ret void
}

declare dso_local i64 @get_hex3(i32*, i32*, i32*) #1

declare dso_local i64 @get_hex(i32*) #1

declare dso_local i64 @MEMORY_SafeGetByte(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
