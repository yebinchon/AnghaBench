; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_close.c_poll_kqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_close.c_poll_kqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32 }

@timeout_ms = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"kqueue already closed?\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"poll\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fd should be closed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @poll_kqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @poll_kqueue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kevent, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 0
  %10 = load i32, i32* @timeout_ms, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 1
  %12 = load i32, i32* @EV_ADD, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 2
  %14 = load i32, i32* @EVFILT_TIMER, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @kevent(i32 %15, %struct.kevent* %5, i32 1, %struct.kevent* null, i32 0, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EBADF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %47

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @T_QUIET, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @kevent(i32 %31, %struct.kevent* null, i32 0, %struct.kevent* %5, i32 1, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @T_LOG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %30

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EBADF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  store i8* null, i8** %2, align 8
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
