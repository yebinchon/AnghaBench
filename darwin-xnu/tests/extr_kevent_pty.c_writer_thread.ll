; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_writer_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_writer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"writer thread received valid fd\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@writing = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"writer got an error (%s), shutting down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @writer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @writer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i8 signext 97, i32 4096)
  %11 = load i32, i32* @T_SETUPBEGIN, align 4
  %12 = load i32, i32* @T_QUIET, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @T_ASSERT_GT(i32 %13, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @T_SETUPEND, align 4
  br label %16

16:                                               ; preds = %34, %29, %1
  %17 = load i64, i64* @writing, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %22 = call i32 @write(i32 %20, i8* %21, i32 4096)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %16

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = call i32 @strerror(i64 %31)
  %33 = call i32 @T_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i8* null, i8** %2, align 8
  br label %36

34:                                               ; preds = %19
  br label %16

35:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @T_ASSERT_GT(i32, i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @T_LOG(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
