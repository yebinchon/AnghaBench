; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_seekAndWriteFd.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_seekAndWriteFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_START = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TIMER_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WRITE   %-3d %5d %7lld %llu\0A\00", align 1
@TIMER_ELAPSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32*)* @seekAndWriteFd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekAndWriteFd(i32 %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = and i32 %15, 131071
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 131071
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @TIMER_START, align 4
  br label %23

23:                                               ; preds = %59, %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i32 @lseek(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %13, align 4
  %30 = call i32 @SimulateIOError(i32 %28)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %23
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @errno, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %34
  store i32 -1, i32* %6, align 4
  br label %80

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @osWrite(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @errno, align 4
  %57 = load i32, i32* @EINTR, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ]
  br i1 %60, label %23, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* @TIMER_END, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TIMER_ELAPSED, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @OSTRACE(i8* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @errno, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72, %61
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %46
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @SimulateIOError(i32) #1

declare dso_local i32 @osWrite(i32, i8*, i32) #1

declare dso_local i32 @OSTRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
