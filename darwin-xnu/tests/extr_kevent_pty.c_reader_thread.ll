; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_reader_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_reader_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"reader thread received valid fd\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"reader got an error (%s), shutting down\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read on PTY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @reader_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reader_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @T_SETUPBEGIN, align 4
  %10 = load i32, i32* @T_QUIET, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @T_ASSERT_GT(i32 %11, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @T_SETUPEND, align 4
  br label %14

14:                                               ; preds = %42, %23, %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @read(i32 %15, i8* %5, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %14

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EBADF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 @strerror(i64 %29)
  %31 = call i32 @T_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i8* null, i8** %2, align 8
  br label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  br label %42

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %43

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %36
  br label %14

43:                                               ; preds = %40, %28
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i32 @T_ASSERT_GT(i32, i32, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @T_LOG(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
