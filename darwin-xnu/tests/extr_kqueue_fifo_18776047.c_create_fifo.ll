; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_fifo_18776047.c_create_fifo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_fifo_18776047.c_create_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ensure %s is a fifo\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"creating a fifo at path %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"stat operation on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_fifo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* @errno, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @stat(i8* %5, %struct.stat* %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISFIFO(i32 %11)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @T_ASSERT_TRUE(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %29

15:                                               ; preds = %1
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @mkfifo(i8* %20, i32 511)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @T_ASSERT_POSIX_ZERO(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %28

25:                                               ; preds = %15
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @T_ASSERT_TRUE(i32, i8*, i8*) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*, i8*) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
